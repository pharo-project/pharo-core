testCopying
	| dictionary copy |

	dictionary := self dictionaryWithAssociations.
	copy := dictionary copy.
	self
		assert: dictionary = copy;
		deny: dictionary == copy.

	copy := dictionary copyEmpty.
	self
		deny: dictionary = copy;
		assert: copy isEmpty.