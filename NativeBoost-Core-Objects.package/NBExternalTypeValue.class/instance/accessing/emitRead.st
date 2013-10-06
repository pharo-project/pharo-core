emitRead

	^ (self nbCalloutIn: thisContext sender) 
		function: 'oop ()'
		emit: [:gen :proxy :asm |
			proxy receiver. "receiver oop"
			proxy varBytesFirstFieldOf:  asm EAX.
			(gen resolveType: self class valueType) readOop: asm EAX ptr generator: gen.
			 ]