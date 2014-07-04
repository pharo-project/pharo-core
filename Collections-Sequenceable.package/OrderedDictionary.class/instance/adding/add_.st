add: anAssociation
	| oldSize |

	oldSize := dictionary size.
	dictionary add: anAssociation.
	dictionary size > oldSize
		ifTrue: [orderedKeys addLast: anAssociation key].
	^ anAssociation.