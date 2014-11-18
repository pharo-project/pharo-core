add: anAssociation
	| oldSize newSize |

	oldSize := dictionary size.
	dictionary add: anAssociation.
	(newSize := dictionary size) > oldSize
		ifTrue: [
			 newSize > orderedKeys size
				ifTrue: [self growOrderedKeys].
			orderedKeys at: newSize put: anAssociation key].
	^ anAssociation.