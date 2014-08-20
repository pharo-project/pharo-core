findMethodIn: aClass
	| recentList pattern  |
	aClass ifNil: [ ^ nil ].
	recentList := aClass selectors.
	pattern := recentList isEmpty
		ifTrue: [ UIManager default request: 'Message name or fragment?' ]
		ifFalse: [ UIManager default enterOrRequestFrom: recentList lines: #() title: 'Message name or fragment?' ].
	pattern isEmptyOrNil
		ifTrue: [ ^ nil ].
	^ self selectorFromPattern: pattern withCaption: '' startingFrom: self selectedClass.
	