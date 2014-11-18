testEqualsDictionary
	| orderedDictionary unorderedDictionary |

	"Comparisons with Dictionaries that contain the same associations should work too"
	orderedDictionary := self emptyDictionary.
	unorderedDictionary := self internalDictionaryClass new.
	self assertDictionary: orderedDictionary equals: unorderedDictionary.

	orderedDictionary addAll: self dictionaryAssociations.
	self assertDictionary: orderedDictionary doesNotEqual: unorderedDictionary.
	
	"Dictionary>>addAll: can only accept keyed collections as an argument, so newFrom: is
	used instead."
	unorderedDictionary := self internalDictionaryWithAssociations.
	self assertDictionary: orderedDictionary equals: unorderedDictionary.
	unorderedDictionary := self internalDictionaryClass newFrom: self dictionaryAssociations reversed.
	self assertDictionary: orderedDictionary equals: unorderedDictionary.