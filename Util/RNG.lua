local module = {}

local arbCounter = 0

function module.init()
	arbCounter = 0
end
function module.generateRandomVarName()
	arbCounter += 1
	return "Var_" .. arbCounter
end

return module
