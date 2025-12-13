local Tokenizer = require "./Tokenizer"
local ErrorForm = require "../Util/ErrorForm"
local AST = {}
AST.typehandlers = {}

-- Builds an outline of the main script (root function)
function AST.build(tokens:{Tokenizer.Token}): ErrorForm.ResultForm
	table.insert(tokens, {content=nil, tokentype="<EOF>"})
	
	local rootFunction = {subfunctions={}, code={}, prev=nil}
	local crtFunction = rootFunction
	
	-- Pass 1: solve brackets
		
end

return AST