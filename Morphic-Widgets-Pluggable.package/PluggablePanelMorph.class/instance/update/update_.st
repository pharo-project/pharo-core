update: what
	what ifNil: [^self].
	what == getChildrenSelector ifTrue:[
		self removeAllMorphs.
		self addAllMorphs: (model perform: getChildrenSelector).
		self submorphsDo:[:m| m hResizing: #spaceFill; vResizing: #spaceFill].
	].