clearFlag
	"Clear the user-level flag bit"
	| newHeader |
	newHeader := self absoluteHeader bitAnd: (1 << 29) bitInvert.
	self signFlag ifTrue: [ newHeader := newHeader negated ].
	self objectAt: 1 put: newHeader. 