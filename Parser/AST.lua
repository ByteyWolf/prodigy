local Tokenizer = require "./Tokenizer"
local ErrorForm = require "../Util/ErrorForm"
local RNG = require "../Util/RNG"
local AST = {}
AST.typehandlers = {}

-- Builds an outline of the main script (root function)
function AST.build(tokens:{Tokenizer.Token}): ErrorForm.ResultForm
	table.insert(tokens, {content=nil, tokentype="<EOF>"})
	
	local rootFunction = {subfunctions={}, code={}, prev=nil}
	local crtFunction = rootFunction
	
	-- Pass 1: solve brackets
	-- actually no, before that i probably need an equation solver using stacks
	local function solveEquation()
		local solutionSteps = {}
		local resultVariable = RNG.generateRandomVarName()
		-- TODO
	end
		
end

return AST