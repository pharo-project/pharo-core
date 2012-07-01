lookenhancements
addPaneSplitters
	| splitter remaining target targetX sameX minY maxY targetY sameY minX maxX |
	self removePaneSplitters.
	self removeCornerGrips.

	remaining := submorphs reject: [:each | each layoutFrame rightFraction = 1].
	[remaining notEmpty] whileTrue:
		[target := remaining first.
		targetX := target layoutFrame rightFraction.
		sameX := submorphs select: [:each | each layoutFrame rightFraction = targetX].
		minY := (sameX detectMin: [:each | each layoutFrame topFraction]) layoutFrame topFraction.
		maxY := (sameX detectMax: [:each | each layoutFrame bottomFraction]) layoutFrame bottomFraction.
		splitter := ProportionalSplitterMorph new.
		splitter layoutFrame: (LayoutFrame
			fractions: (targetX @ minY corner: targetX @ maxY)
			offsets: ((0 @ (target layoutFrame topOffset ifNil: [0]) corner: 4 @ (target layoutFrame bottomOffset ifNil: [0])) translateBy: (target layoutFrame rightOffset ifNil: [0]) @ 0)).
		self addMorphBack: (splitter position: self position).
		remaining := remaining copyWithoutAll: sameX].

	remaining := submorphs copy reject: [:each | each layoutFrame bottomFraction = 1].
	[remaining notEmpty]
		whileTrue: [target := remaining first.
			targetY := target layoutFrame bottomFraction.
			sameY := submorphs select: [:each | each layoutFrame bottomFraction = targetY].
			minX := (sameY detectMin: [:each | each layoutFrame leftFraction]) layoutFrame leftFraction.
			maxX := (sameY detectMax: [:each | each layoutFrame rightFraction]) layoutFrame rightFraction.
			splitter := ProportionalSplitterMorph new beSplitsTopAndBottom; yourself.
			splitter layoutFrame: (LayoutFrame
				fractions: (minX @ targetY corner: maxX @ targetY)
				offsets: (((target layoutFrame leftOffset ifNil: [0]) @ 0 corner: (target layoutFrame rightOffset ifNil: [0]) @ 4) translateBy: 0 @ (target layoutFrame bottomOffset ifNil: [0]))).
			self addMorphBack: (splitter position: self position).
			remaining := remaining copyWithoutAll: sameY].

	self linkSubmorphsToSplitters.
	self splitters do: [:each | each comeToFront].
