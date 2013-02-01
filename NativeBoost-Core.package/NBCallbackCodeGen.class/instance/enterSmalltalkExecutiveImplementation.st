callback entry code
enterSmalltalkExecutiveImplementation

	"call #enterSmalltalkExecutiveImplementation"
	
	| addr |
	
	addr := NativeBoost loadSymbol: 'enterSmalltalkExecutiveImplementation' fromModule: NativeBoost VMModule.
	
	asm cdeclCall: [:callInfo |
		asm 
			mov: addr asUImm32 to: EAX;
			call: EAX. 
	] alignment: NativeBoost forCurrentPlatform stackAlignment 