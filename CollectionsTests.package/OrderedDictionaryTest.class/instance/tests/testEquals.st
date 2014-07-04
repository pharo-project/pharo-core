testEquals
	| dictionaryOne dictionaryTwo |

	dictionaryOne := self emptyDictionary.
	dictionaryTwo := self emptyDictionary.
	self assertDictionary: dictionaryOne commutativelyEquals: dictionaryTwo.

	dictionaryOne add: self dictionaryAssociations first.
	dictionaryTwo add: self dictionaryAssociations first. 
	self
		assertDictionary: dictionaryOne doesNotEqual: self emptyDictionary;
		assertDictionary: dictionaryOne commutativelyEquals: dictionaryTwo.

	"For equality, order will not matter"
	dictionaryOne add: self dictionaryAssociations second.
	self assertDictionary: dictionaryOne doesNotEqual: dictionaryTwo.
	dictionaryTwo add: self dictionaryAssociations third.
	self assertDictionary: dictionaryOne doesNotEqual: dictionaryTwo.
	dictionaryOne add: self dictionaryAssociations third.
	self assertDictionary: dictionaryOne doesNotEqual: dictionaryTwo.
	dictionaryTwo add: self dictionaryAssociations second.
	self assertDictionary: dictionaryOne commutativelyEquals: dictionaryTwo.

	dictionaryOne addAll: (self dictionaryAssociations allButFirst: 3).
	dictionaryTwo addAll: (self dictionaryAssociations allButFirst: 3).
	self assertDictionary: dictionaryOne commutativelyEquals: dictionaryTwo.