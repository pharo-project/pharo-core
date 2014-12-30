numLiterals
	"Answer the number of literals used by the receiver."
	
	Smalltalk vm isSpur ifTrue: [ ^ self absoluteHeader bitAnd: 16rFF ]. 
	^ (self absoluteHeader bitShift: -9) bitAnd: 16rFF