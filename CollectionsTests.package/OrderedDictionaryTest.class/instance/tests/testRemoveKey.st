testRemoveKey
	| dictionary associationsToRemove |

	dictionary := self dictionaryWithAssociations.
	self should: [dictionary removeKey: self absentKey] raise: Error.
	associationsToRemove := self dictionaryAssociations asOrderedCollection.
	[associationsToRemove notEmpty]
		whileTrue: [ | removed |
			removed := associationsToRemove removeFirst.
			self
				assert: (dictionary removeKey: removed key) = removed value;
				should: [dictionary removeKey: removed key] raise: Error;
				deny: (dictionary includesKey: removed key);
				deny: (dictionary keys identityIncludes: removed key);
				deny: (dictionary orderedKeys identityIncludes: removed key);
				assert: dictionary keys = (associationsToRemove collect: [:each | each key]) asArray].