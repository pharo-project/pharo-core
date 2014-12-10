selected

	^ selected ifNil: [
		selected := self candidates isEmpty
			ifTrue: [ nil ]
			ifFalse: [ self candidates head ] ]