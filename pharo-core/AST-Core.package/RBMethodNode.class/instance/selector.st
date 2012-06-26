accessing
selector
	^selector isNil
		ifTrue: [selector := self buildSelector]
		ifFalse: [selector]