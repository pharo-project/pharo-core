primitiveEnum: arg case: aCase

	^ (self nbCalloutIn: thisContext sender) 
		options: aCase; 
		function: {#NBInt32. {self class enumType. #*. #arg} } 
		emit: [:gen :proxy :asm |
			asm pop: asm ECX; "pointer to the enum"
				mov: asm ECX ptr to: asm EAX. "read the enum value"
		]