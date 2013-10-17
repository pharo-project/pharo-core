maximumWidth
	"Answer the maximum width that the receiver can have.   A nil value means no maximum, and for practical purposes results in a value of 99999 here temporarily, for help in future debugging"

	^ maximumWidth ifNil: [99999]