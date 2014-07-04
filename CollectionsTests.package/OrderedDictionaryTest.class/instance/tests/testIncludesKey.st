testIncludesKey
	| dictionary |

	dictionary := self emptyDictionary.
	self deny: (self dictionaryKeys anySatisfy: [:each | dictionary includesKey: each]).

	dictionary addAll: self dictionaryAssociations.
	self assert: (self dictionaryKeys allSatisfy: [:each | dictionary includesKey: each]).