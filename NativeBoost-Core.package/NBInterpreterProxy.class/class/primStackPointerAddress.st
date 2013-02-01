accessing functions
primStackPointerAddress
	"retrieve a stack pointer address"

	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin' error: errorCode>

	^ self nbCallout function: #(uint ()) emit: [:gen :proxy :asm | | fn | 
			fn :=  [ (NativeBoost forCurrentPlatform 
						loadSymbol: 'stackPointerAddress' fromModule: '') ] ifError: [ nil ].
			fn ifNil: [ ^ nil ]. "just for safety" 

			asm 
				mov: fn asUImm32 to: asm EAX;			
				call: EAX.
		].