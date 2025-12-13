local errorform = {}

export type ResultForm = {
	Result: number,
	TokenError: {offset:number},
}

errorform.errors = {
	OK = 0,
	MALFORMED_NUMBER = 1,
	UNRECOGNIZED_CHARACTER = 2,
	UNEXPECTED_TOKEN = 3,
}
errorform.messages = {
	"Success",
	"Malformed number",
	"Unrecognized character",
	"Token was not expected at this point",
}
function errorform.error(code:number, tokenerror:{any}?):ResultForm
	return {
		Result = code,
		TokenError = tokenerror,
	}
end

return errorform