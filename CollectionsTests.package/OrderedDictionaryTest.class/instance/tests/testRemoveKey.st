testRemoveKey
	| dictionary associationsToRemove |

	(dictionary := self dictionaryWithAssociations)
		defaultValue: self defaultValue.
	self assert: (dictionary removeKey: self absentKey) = self defaultValue.
	associationsToRemove := self dictionaryAssociations asOrderedCollection.
	[associationsToRemove notEmpty]
		whileTrue: [ | removed |
			removed := associationsToRemove removeFirst.
			self
				assert: (dictionary removeKey: removed key) = removed value;
				assert: (dictionary removeKey: removed key) = self defaultValue;
				deny: (dictionary includesKey: removed key);
				deny: (dictionary keys identityIncludes: removed key);
				deny: (dictionary orderedKeys identityIncludes: removed key);
				assert: dictionary keys = (associationsToRemove collect: [:each | each key]) asArray].