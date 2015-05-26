primitiveInt: anInt case: aCase

	^ (self nbCalloutIn: thisContext sender) 
		options: aCase; 
		function: #(int (int * anInt) ) 
		emit: [:gen :proxy :asm |
			asm pop: asm ECX;
				mov: asm ECX ptr to: asm EAX.
		]
		