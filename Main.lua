--[[

	Prodigy - Lua to VisualSource compiler
	
	@author ByteyWolf
	@since Dec-10-2025
	
	bytey was here :3

]]

local Tokenizer = require "./Parser/Tokenizer"
local ErrorForm = require "./Util/ErrorForm"
local AST = require "./Parser/AST"

local Prodigy = {}

-- Parses Lua string and returns VisualSource or an error.
-- Options can be: IncludeDebugInfo:boolean, UseFakeString:boolean (so far not implemented)
function Prodigy.parse(source:string, options:{[string]:any}): (ErrorForm.ResultForm, string?)
	local TokenizerResult, Tokens = Tokenizer.parse(source)
	if TokenizerResult.Result ~= ErrorForm.errors.OK then
		return TokenizerResult
	end
	-- todo: build ast, parse ...
	return {Result=ErrorForm.errors.OK}, ""
end

return Prodigy