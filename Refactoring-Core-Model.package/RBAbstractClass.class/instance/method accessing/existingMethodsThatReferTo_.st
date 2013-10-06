existingMethodsThatReferTo: aSymbol 
	| existingMethods special byte |
	special := Smalltalk
		hasSpecialSelector: aSymbol
		ifTrueSetByte: [ :value | byte := value ].
	existingMethods := self realClass 
		thoroughWhichSelectorsReferTo: aSymbol 
		special: special byte: byte.
	(newMethods isNil and: [ removedMethods isNil ])
		ifTrue: [ ^ existingMethods ].
	^ existingMethods 
		reject: [ :each | (self hasRemoved: each) or: [ self newMethods includesKey: each ] ]