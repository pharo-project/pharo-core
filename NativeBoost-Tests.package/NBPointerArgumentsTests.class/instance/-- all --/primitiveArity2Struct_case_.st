primitiveArity2Struct: arg case: aCase

	^ (self nbCalloutIn: thisContext sender) 
		options: aCase; 
		function: {#long. {self class structType. #*. #*. #arg} } 
		emit: [:gen :proxy :asm |
			asm pop: asm ECX; "pointer to the structure *"
				mov: asm ECX ptr32 to: asm ECX;
				mov: asm ECX ptr + 4 to: asm EAX. "read the long value from NBTestStructure"
		]