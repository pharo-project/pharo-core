lookenhancements
addPaneVSplitterBetween: leftMorph and: rightMorphs 

	| targetX minY maxY splitter |
	targetX := leftMorph layoutFrame rightFraction.
	minY := (rightMorphs detectMin: [:each | each layoutFrame topFraction]) layoutFrame topFraction.
	maxY := (rightMorphs detectMax: [:each | each layoutFrame bottomFraction]) layoutFrame bottomFraction.
	
	splitter := ProportionalSplitterMorph new.
	splitter layoutFrame: (LayoutFrame
		fractions: (targetX @ minY corner: targetX @ maxY)
		offsets: ((0 @ (leftMorph layoutFrame topOffset ifNil: [0]) corner: (4@ (leftMorph layoutFrame bottomOffset ifNil: [0]))) translateBy: (leftMorph layoutFrame rightOffset ifNil: [0]) @ 0)).

	self addMorphBack: (splitter position: self position).