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
	self listSource setIndex: index.
	self listSource mouseDownOnItemAt: index event: event.	
	
	event commandKeyPressed ifTrue: [	previousIndex = index ifTrue: [ previousIndex := 0 ]].
	event shiftPressed ifTrue: [
		| start end |
		start := previousIndex min: index.
		end := previousIndex max: index.
		
		start to: end do: [:e | self listSource addAtIndexes: e ]]