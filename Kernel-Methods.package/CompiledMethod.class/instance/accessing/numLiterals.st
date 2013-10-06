numLiterals
	"Answer the number of literals used by the receiver."
	
	^ (self header bitShift: -9) bitAnd: 16rFF