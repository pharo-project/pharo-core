newFrom: aDictionaryOrArray
	| newDictionary |

	newDictionary := self new: aDictionaryOrArray size.
	aDictionaryOrArray associationsDo: [:each | newDictionary add: each].
	(aDictionaryOrArray respondsTo: #defaultValue)
		ifTrue: [newDictionary defaultValue: aDictionaryOrArray defaultValue].
	^ newDictionary.