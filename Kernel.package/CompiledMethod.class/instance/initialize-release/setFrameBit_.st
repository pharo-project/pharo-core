setFrameBit: boolean 
	"true for large frame, else false"
	| largeFrameBit newHeader |
	largeFrameBit := 16r20000.
	newHeader := self absoluteHeader bitAnd: largeFrameBit bitInvert.
	boolean ifTrue: [ newHeader := newHeader + largeFrameBit ].
	self signFlag ifTrue: [ newHeader := newHeader negated ].
	self objectAt: 1 put: newHeader.