protocol
setIndex: index

	| oldIndex newIndex |

	oldIndex := selectedIndex contents.
	newIndex := index.
	self secondSelection: 0.
	self setViewToIndex: index.
	
	( self deSelectOnReclick and: [ oldIndex == newIndex ])
		ifTrue: [ 
			selectedIndexes at: newIndex put: false.
			newIndex := 0 ].
		
	selectedIndex contents: newIndex.
	self deSelectOnReclick 
		ifTrue: [ self toggleAtIndexes: newIndex ]
		ifFalse: [ self addAtIndexes: newIndex ]