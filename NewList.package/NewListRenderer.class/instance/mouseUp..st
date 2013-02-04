events
mouseUp: event
	| previousIndex index selectors |	
	
	self listSource wantsKeyboardFocus ifTrue: [ self listSource takeKeyboardFocus ].

	(event position y < (self topDifference + self headerHeight)) 
		ifTrue: [ ^ self mouseDownOnHeader: event ].

	index := self indexAtLocation: event position.
	previousIndex := self selectedIndex.
	
	((event shiftPressed not and: [ event commandKeyPressed not ]) and: [ self selectionWithKeys ])
		ifTrue: [ self resetSelectionIndexes ].

	self mouseDownIndex: 0.
	( self deSelectOnReclick and: [ previousIndex == index ])
		ifTrue: [ 
			self listSource private_selectedIndexes at: index put: false.
			index := 0 ].
	self listSource setIndex: index.
	self listSource mouseUpOnItemAt: index event: event.	
	
	event commandKeyPressed ifTrue: [	previousIndex = index ifTrue: [ previousIndex := 0 ]].
	event shiftPressed ifTrue: [
		| start end |
		start := previousIndex min: index.
		end := previousIndex max: index.
		
		start to: end do: [:e | self listSource addAtIndexes: e ]]