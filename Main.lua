--[[

	Prodigy - Lua to VisualSource compiler
	
	@author ByteyWolf
	@since Dec-10-2025
	
	bytey was here :3

]]

local Tokenizer = require "./Parser/Tokenizer"
local ErrorForm = require "./Util/ErrorForm"
local AST = require "./Parser/AST"
local Debug = require "./Util/Debug"
local RNG = require "./Util/RNG"

local Prodigy = {}

-- Parses Lua string and returns VisualSource or an error.
-- Options can be: IncludeDebugInfo:boolean, UseFakeString:boolean (so far not implemented)
function Prodigy.parse(source:string, options:{[string]:any}): (ErrorForm.ResultForm, string?)
	RNG.init()
	Debug.log("==== [ TOKENIZING ] ====")
	local tstart = tick()
	local TokenizerResult, Tokens = Tokenizer.parse(source)
	local tend = tick()
	Debug.log("Tokenizer finished in "..(tend - tstart).."s, with result:", ErrorForm.messages[TokenizerResult.Result])
	if TokenizerResult.Result ~= ErrorForm.errors.OK then
		return TokenizerResult
	end
	Debug.log("==== [ BUILDING AST ] ====")
	-- todo: build ast, parse ...
	return {Result=ErrorForm.errors.OK}, ""
end

return Prodigy