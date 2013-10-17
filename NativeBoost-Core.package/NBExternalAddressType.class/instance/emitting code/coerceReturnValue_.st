coerceReturnValue: gen

	"input: address is in EAX. 
	output: ExternalAddress instance oop in EAX
	creates an instance of NBExternalAddress and store the address there"

	| asm result |
	
	asm := gen asm.
	
	result := self createInstanceWithValue: asm EAX generator: gen.
	asm mov: result to: asm EAX.
	
 