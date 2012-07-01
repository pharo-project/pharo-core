arithmetic
arg
	"Answer the argument of the receiver (see Complex | arg)."
	
	self isZero ifTrue: [self error: 'Zero (0 + 0 i) does not have an argument.'].
	0 < self
		ifTrue: [^ 0]
		ifFalse: [^ Float pi]