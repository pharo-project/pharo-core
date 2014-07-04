at: aKey put: aValue
	| oldSize |

	oldSize := dictionary size.
	dictionary at: aKey put: aValue.
	dictionary size > oldSize
		ifTrue: [orderedKeys addLast: aKey].
	^ aValue.