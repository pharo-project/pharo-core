compiledMethodWith: trailer
	| cm header lits |
	lits := self literals.
	header := (self numArgs bitShift: 24) +
				( self numTemps bitShift: 18) +
				lits size +
				(self hasPrimitive asBit bitShift: 16).
	cm := trailer createMethod: self bytecodes size class: CompiledMethod header: header.
	(WriteStream with: cm)
		position: cm initialPC - 1;
		nextPutAll: self bytecodes.
	lits withIndexDo: [:obj :i | cm literalAt: i put: obj].
	cm needsFrameSize: self stackFrameSize.
	
	self addProperties: cm.
	^ cm