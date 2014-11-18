at: aKey put: aValue
	| oldSize newSize |

	oldSize := dictionary size.
	dictionary at: aKey put: aValue.
	(newSize := dictionary size) > oldSize
		ifTrue: [
			 newSize > orderedKeys size
				ifTrue: [self growOrderedKeys].
			orderedKeys at: newSize put: aKey].
	^ aValue.