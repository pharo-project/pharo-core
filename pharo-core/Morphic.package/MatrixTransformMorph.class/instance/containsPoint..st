geometry testing
containsPoint: aPoint
	self visible ifFalse:[^false].
	(bounds containsPoint: aPoint) ifFalse: [^ false].
	self hasSubmorphs
		ifTrue: [self submorphsDo: 
					[:m | (m fullContainsPoint: (self transform globalPointToLocal: aPoint))
							ifTrue: [^ true]].
				^ false]
		ifFalse: [^ true]