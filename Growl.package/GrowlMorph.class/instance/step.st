stepping
step

	(self containsPoint: ActiveHand position) ifTrue: [
		self resetAlpha.
		^ self].
	vanishTime ifNotNil: [TimeStamp now < vanishTime ifTrue: [^self]].
	self alpha: self alpha - 0.05.