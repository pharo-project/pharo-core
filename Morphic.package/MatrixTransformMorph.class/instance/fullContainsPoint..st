geometry testing
fullContainsPoint: aPoint
	| p |
	self visible ifFalse:[^false].
	(self fullBounds containsPoint: aPoint) ifFalse:[^false].
	(self containsPoint: aPoint) ifTrue:[^true].
	p := self transform globalPointToLocal: aPoint.
	submorphs do:[:m|
		(m fullContainsPoint: p) ifTrue:[^true].
	].
	^false