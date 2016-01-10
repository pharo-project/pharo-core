step

	(self containsPoint: ActiveHand position) ifTrue: [
		self resetAlpha.
		^ self ].
	self alpha: self alpha - 0.05.
	tMorph color isTransparent ifTrue: [ self delete ]