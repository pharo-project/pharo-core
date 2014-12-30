numTemps
	"Answer the number of temporary variables used by the receiver."
	
	^ (self absoluteHeader bitShift: -18) bitAnd: 16r3F