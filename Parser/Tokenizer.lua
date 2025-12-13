local Stream = require "../Util/Stream"
local Errors = require "../Util/ErrorForm"

local Keywords = {"local", "function", "if", "then", "else", "elseif", "while", "for", "in", "do", "end", "return", "not", "and", "or", "break", "continue", "export", "type"}
local ValidVariableAlphabet = "abcdefghijklmnopqrstuvwxyz_"
local ValidOperators = "+-*/^%.:=,#"
local ValidStandaloneOperators = "(){}[]"
local ValidNumbers = "0123456789"
local Tokenizer = {}

export type Token = {
	content: string,
	tokentype: string,
	offset: number,
	line: number,
	col: number,
}

function Tokenizer.createToken(content:any, tokentype:string, offset:number, line:number, col:number): Token
	local token = {content=content, tokentype=tokentype, offset=offset, line=line, col=col}
	return token
end

function Tokenizer.parse(source:string): Errors.ResultForm
	local tokens = {}
	local stream = Stream.new(source)
	
	while true do
		local char = stream:read(1)
		if #char == 0 then
			break
		end
		
		if char == ' ' or char == '\t' or char == '\n' then
			continue
		end
		
		if string.find(ValidVariableAlphabet, char, nil, true) then
			-- variable / keyword
			local variable = char
			while true do
				char = stream:read(1)
				if char == "" then
					break
				end
				if not string.find(ValidVariableAlphabet, char, nil, true) then
					stream:rewind(1)
					break
				end
				variable = variable .. char
			end
			local tokentype = "variable"
			if table.find(Keywords, variable) then
				tokentype = "keyword"
			end
			if variable == "false" or variable == "true" then
				tokentype = "boolean"
				variable = variable == "true"
			end
			if variable == "nil" then
				tokentype = "nil"
				variable = nil
			end
			table.insert(tokens, Tokenizer.createToken(variable, tokentype, stream:getPtr()))
			continue
		end
		
		if string.find(ValidOperators, char, nil, true) then
			if tokens[#tokens] and tokens[#tokens].tokentype == "operator" and string.sub(tokens[#tokens].content, -1, -1) ~= "=" then
				tokens[#tokens].content ..= char
				continue
			end
			table.insert(tokens, Tokenizer.createToken(char, "operator"))
			continue
		end
		
		if string.find(ValidStandaloneOperators, char, nil, true) then
			table.insert(tokens, Tokenizer.createToken(char, "bracket"))
			continue
		end
		
		if string.find(ValidNumbers, char, nil, true) then
			local num = char
			while true do
				char = stream:read(1)
				if char == "" then
					break
				end
				if not string.find(ValidNumbers .. "exb._", char, nil, true) then
					stream:rewind(1)
					break
				end
				num = num .. char
			end
			if tokens[#tokens] and tokens[#tokens].tokentype == "operator" then
				if tokens[#tokens].content == "-" then
					table.remove(tokens, #tokens)
					num = "-" .. num
				elseif tokens[#tokens].content == "." then
					table.remove(tokens, #tokens)
					num = "0." .. num
				end
			end
			num = string.gsub(num, '_', '')
			if string.sub(num, 1, 2) == "0b" then
				num = tonumber(string.sub(num, 3), 2)
			else
				num = tonumber(num)
			end
			local numtoken = Tokenizer.createToken(num, "number", stream:getPtr())
			if not num then
				return {Result=Errors.errors.MALFORMED_NUMBER, TokenError=numtoken}
			end
			table.insert(tokens, numtoken)
			
			continue
		end
		local invalidToken = Tokenizer.createToken(char, "invalid", stream:getPtr())
		return {Result=Errors.errors.UNRECOGNIZED_CHARACTER, TokenError=invalidToken}
	end
	
	return {Result=Errors.errors.OK}, tokens
end

return Tokenizer