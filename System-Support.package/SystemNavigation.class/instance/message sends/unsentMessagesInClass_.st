unsentMessagesInClass: aClass 

	| methReferences |
	methReferences := Set new.
	aClass selectorsDo: [:selector|
		(self isUnsentMessage: selector) ifTrue: [
			methReferences add: (self createMethodNamed: selector realParent: aClass)]].
	^methReferences