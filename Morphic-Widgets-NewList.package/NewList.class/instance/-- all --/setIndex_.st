setIndex: index

	| oldIndex newIndex |

	oldIndex := selectedIndex value.
	newIndex := index.
	self secondSelection: 0.
	self setViewToIndex: index.
	
	selectedIndex value: newIndex.
	(self deSelectOnReclick and: [ oldIndex == newIndex ])
		ifTrue: [ self toggleAtIndexes: newIndex ]
		ifFalse: [ self addAtIndexes: newIndex ]