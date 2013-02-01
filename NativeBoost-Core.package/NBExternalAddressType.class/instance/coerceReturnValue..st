as yet unclassified
coerceReturnValue: gen

	"input: address is in EAX. 
	output: ExternalAddress instance oop in EAX
	creates an instance of NBExternalAddress and store the address there"

	| asm proxy result |
	
	proxy := gen proxy.
	asm := gen asm.
	result := gen reserveTemp.
	
	asm mov: asm EAX to: result.
	proxy createInstanceOf: NBExternalAddress size: NBExternalType pointerSize.
	asm mov: result to: asm ECX.
	proxy storePointer: asm ECX intoVarbytes: asm EAX at: 0.

	"return the oop in EAX"
	
	gen releaseTemps: 1.
	