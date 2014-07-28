packageItemWrapper: anElement
	anElement = 0
		ifTrue: [ ^ '' ].
	^ self model
		ifGroups: [ anElement name ]
		ifNot: [ 
			anElement name]