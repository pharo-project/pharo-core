*AsmJit-Extension
asTwosComplement: mask
	"return the two's completemented cropped version.
	Example for a byte value:
		-5 asTwosComplement: 16rFF "
	| bound |
	bound := (mask + 1).
	
	self * 2 >= bound 
		ifTrue: [Error signal: self printString , ' too big for signed ', mask highBit printString,  'bit value'].
		 
	(self >= 0)
		ifTrue: [ ^ self bitAnd: mask ].
		
	self * 2 < bound negated 
		ifTrue: [Error signal: self printString , ' too small for signed ', mask highBit printString, 'bit value'].
		
	^ (self + mask + 1) bitAnd: mask