compiledMethodWith: trailer
	| cm header |
	header := ((self numArgs bitShift: 24) +
				( self numTemps bitShift: 18) +
				self literals size +
				(self hasPrimitive asBit bitShift: 16) ) negated.
	cm := trailer createMethod: self bytecodes size class: CompiledMethod header: header.
	(WriteStream with: cm)
		position: cm initialPC - 1;
		nextPutAll: self bytecodes.
	self literals withIndexDo: [:obj :i | cm literalAt: i put: obj].
	cm needsFrameSize: self stackFrameSize.
	
	self addProperties: cm.
	^cm.