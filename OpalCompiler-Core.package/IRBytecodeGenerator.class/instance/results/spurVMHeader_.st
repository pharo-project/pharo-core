spurVMHeader: literalsSize
	| header |
	header := (self numArgs bitShift: 24) +
				( self numTemps bitShift: 18) +
				literalsSize +
				(self hasPrimitive asBit bitShift: 16).
	self encoderClass isAlternateBytecodeSet ifTrue: [ header := header negated ].
	^ header