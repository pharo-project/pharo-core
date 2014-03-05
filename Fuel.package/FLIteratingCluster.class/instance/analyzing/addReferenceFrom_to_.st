addReferenceFrom: anObject to: anotherObject
	| list |
	list := self references
		at: anObject
		ifAbsent: [ nil ].
	list ifNil: [ self references at: anObject put: (list := OrderedCollection new) ].	
	list add: anotherObject