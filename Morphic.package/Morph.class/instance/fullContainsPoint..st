geometry testing
fullContainsPoint: aPoint

	(self fullBounds containsPoint: aPoint) ifFalse: [^ false].  "quick elimination"
	(self containsPoint: aPoint) ifTrue: [^ true].  "quick acceptance"
	submorphs do: [:m | (m fullContainsPoint: aPoint) ifTrue: [^ true]].
	^ false
