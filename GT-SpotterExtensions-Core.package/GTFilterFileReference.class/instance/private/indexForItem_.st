indexForItem: each
	^ (self queryForItem: each) isEmpty
		ifTrue: [ 1 ] " if the modified query is empty, take all items -> index = 1 "
		ifFalse: [ super indexForItem: each ]