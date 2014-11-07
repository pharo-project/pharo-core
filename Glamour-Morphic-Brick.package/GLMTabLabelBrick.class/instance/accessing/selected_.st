selected: aBoolean
	"Use the appropriate label."

	self removeAllBricks.
	self isSelected
		ifTrue: [self addBrickBack: self selectedLabel]
		ifFalse: [self addBrickBack: self normalLabel]