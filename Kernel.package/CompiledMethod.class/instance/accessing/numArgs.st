numArgs
	"Answer the number of arguments the receiver takes."

	^ (self absoluteHeader bitShift: -24) bitAnd: 16r0F