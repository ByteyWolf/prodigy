local errorform = {}

export type ResultForm = {
	Result: number,
	TokenError: {offset:number},
}

errorform.errors = {
	OK = 0,
	MALFORMED_NUMBER = 1,
}
errorform.messages = {
	"Success",
	"Malformed number"
}

return errorform