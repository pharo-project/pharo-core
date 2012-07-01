event
pressed: anIndex

	ActiveHand shiftPressed
		ifTrue: [ | list value |
			list := self rootItems.
			value := (list at: self lastSelectionIndex) selected.
			anIndex < self lastSelectionIndex
				ifTrue: [ list from: anIndex+1 to: self lastSelectionIndex do: [:each | each selected: value ]]
				ifFalse: [ list from:self lastSelectionIndex to: anIndex-1 do: [:each | each selected: value ]]].
	self noticeSelectionChanged.
	self lastSelectionIndex: anIndex