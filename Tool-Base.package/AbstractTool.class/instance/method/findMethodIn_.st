findMethodIn: aClass
	| recentList pattern foundMethod |
	aClass ifNil: [ ^ nil ].
	recentList := aClass selectors.
	pattern := recentList size = 0
		ifTrue: [ UIManager default request: 'Message name or fragment?' ]
		ifFalse: [ UIManager default enterOrRequestFrom: recentList lines: #() title: 'Message name or fragment?' ].
	pattern isEmptyOrNil
		ifTrue: [ ^ nil ].
	foundMethod := self selectorFromPattern: pattern withCaption: '' startingFrom: self selectedClass.
	foundMethod ifNil: [ ^ nil ].
	^ foundMethod