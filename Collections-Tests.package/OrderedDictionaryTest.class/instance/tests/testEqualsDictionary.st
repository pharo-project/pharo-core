testEqualsDictionary
	| orderedDictionary unorderedDictionary |

	"only works on Pharo"
	orderedDictionary := self emptyDictionary.
	unorderedDictionary := self emptyInternalDictionary.
	unorderedDictionary = orderedDictionary
		ifFalse: [^ self].

	self assertDictionary: orderedDictionary equals: unorderedDictionary.
	orderedDictionary addAll: self dictionaryAssociations.
	self assertDictionary: orderedDictionary doesNotEqual: unorderedDictionary.
	
	"Dictionary>>addAll: can only accept keyed collections as an argument, so newFrom: is
	used instead."
	unorderedDictionary := self internalDictionaryWithAssociations.
	self assertDictionary: orderedDictionary equals: unorderedDictionary.
	unorderedDictionary := self internalDictionaryClass newFrom: self dictionaryAssociations reversed.
	self assertDictionary: orderedDictionary equals: unorderedDictionary.