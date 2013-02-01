emitting code
coerceReturnValue: gen
	
	"convert int32 to ST integer"
	gen proxy signed32BitIntegerFor: (gen returnValueRegister).
 
	