private-type-guessing
guessGlobal: aNumber 
	| aClass |
	aClass := Smalltalk 
		at: (self sourceOf: (ranges at: aNumber)) asSymbol
		ifAbsent: [ ^ nil ].
	aClass isBehavior ifFalse: [ ^ nil ].
	aNumber = (completionIndex - 1) ifTrue: [ ^ aClass class ].
	(ranges size >= (aNumber + 1) and: [ (ranges at: aNumber + 1) type = #statementSeparator ]) ifTrue: [ ^ aClass class ].
	^ aClass