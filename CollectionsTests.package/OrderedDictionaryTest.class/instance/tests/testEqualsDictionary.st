testEqualsDictionary
	| orderedDictionary unorderedDictionary |

	"Comparisons with Dictionaries that contain the same associations should work too"
	orderedDictionary := self emptyDictionary.
	unorderedDictionary := Dictionary new.
	self assertDictionary: orderedDictionary commutativelyEquals: unorderedDictionary.

	orderedDictionary addAll: self dictionaryAssociations.
	self assertDictionary: orderedDictionary doesNotEqual: unorderedDictionary.
	
	"Dictionary>>addAll: can only accept keyed collections as an argument, so newFrom: is
	used instead."
	unorderedDictionary := Dictionary newFrom: self dictionaryAssociations.
	self assertDictionary: orderedDictionary commutativelyEquals: unorderedDictionary.
	unorderedDictionary := Dictionary newFrom: self dictionaryAssociations reversed.
	self assertDictionary: orderedDictionary commutativelyEquals: unorderedDictionary.