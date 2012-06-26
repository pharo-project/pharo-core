lookenhancements
addPaneHSplitterBetween: topMorph and: bottomMorphs

	| targetY minX maxX splitter |
	targetY := topMorph layoutFrame bottomFraction.

	minX := (bottomMorphs detectMin: [:each | each layoutFrame leftFraction]) layoutFrame leftFraction.
	maxX := (bottomMorphs detectMax: [:each | each layoutFrame rightFraction]) layoutFrame rightFraction.
	splitter := ProportionalSplitterMorph new beSplitsTopAndBottom; yourself.
	splitter layoutFrame: (LayoutFrame
		fractions: (minX @ targetY corner: maxX @ targetY)
		offsets: (((topMorph layoutFrame leftOffset ifNil: [0]) @ 0 corner: (topMorph layoutFrame rightOffset ifNil: [0]) @ 4) translateBy: 0 @ (topMorph layoutFrame bottomOffset ifNil: [0]))).

	self addMorphBack: (splitter position: self position).