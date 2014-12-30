prepareForSimulationWith: numArgs
	"This method changes the argument count of a CompiledMethod header to numArgs, its temporary count to numArgs + 1 and change the code handling primitive error to store the error code in the unique temporary of the method"
			
	| newHeader xpc |
	newHeader := (((self absoluteHeader bitAnd: 2r01110000000000111111111111111111) 
			bitOr: (numArgs bitShift: 24))
			bitOr: (numArgs + 1 bitShift: 18)).
	self signFlag ifTrue: [ newHeader := newHeader negated ].
	self objectAt: 1 put: newHeader.
	
	xpc := self initialPC.
	"long store temp"
	(self at: xpc) = 129 
		ifTrue: [
			self at: xpc + 1 put: (16r40 + numArgs).
			self at: xpc + 3 put: (16r10 + numArgs)]