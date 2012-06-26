updating
update: what
	what ifNil:[^self].
	what == getLabelSelector ifTrue:[self setLabel: (model perform: getLabelSelector)].
	what == getChildrenSelector ifTrue:[
		children ifNil:[children := #()].
		self removeAllMorphsIn: children.
		children := model perform: getChildrenSelector.
		self addAllMorphs: children.
		children do:[:m| m hResizing: #spaceFill; vResizing: #spaceFill].
	].
	^super update: what