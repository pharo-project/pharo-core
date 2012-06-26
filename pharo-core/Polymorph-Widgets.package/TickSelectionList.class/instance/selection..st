tree build
selection: aNodePath
	| selectedItem value list newIndex multiSelectionNodePath |

	list := self rootItems.
	
	aNodePath selectedNodePath
		ifNotNil: [:path |
			selectedItem := path first.
			value := selectedItem item selected.
			newIndex := (list indexOf: selectedItem item).
			ActiveHand shiftPressed
				ifFalse: [ self lastSelectionIndex: newIndex ].
			list from: ( self lastSelectionIndex min: (newIndex)) to: (newIndex max: self lastSelectionIndex) do: [:each | 
				each selected: value ].
			self lastSelectionIndex: newIndex].
	
	super selection: aNodePath.
	self noticeSelectionChanged.