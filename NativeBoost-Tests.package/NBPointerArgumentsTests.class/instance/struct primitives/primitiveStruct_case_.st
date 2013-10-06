primitiveStruct: aStruct case: aCase

	^ (self nbCalloutIn: thisContext sender) 
		options: aCase; 
		function: {#long. {self class structType. #*. #aStruct} } 
		emit: [:gen :proxy :asm |
			asm pop: asm ECX; "pointer to the structure"
				mov: asm ECX ptr + 4 to: asm EAX. "read the long value from NBTestStructure"
		]