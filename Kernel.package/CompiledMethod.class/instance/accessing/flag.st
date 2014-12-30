flag
	"Answer the user-level flag bit"

	^((self absoluteHeader bitShift: -29) bitAnd: 1) = 1