checkOrUncheck

	self stepModel selected == self candidateLink
		ifTrue: [ self isChecked ifFalse: [ self check ] ]
		ifFalse: [ self isChecked ifTrue: [ self uncheck ] ]