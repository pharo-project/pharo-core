menu
fieldListMenu: aMenu
	
	^  aMenu addList: #(
		('inspect' 					inspectSelection)
		('copy name' 				copyName)
		('references' 				selectionReferences)
		('senders of this key' 		sendersOfSelectedKey)								
		('refresh view' 				refreshView)
		('add key' 					addEntry)
		-
		('rename key'				renameEntry)
		('remove'					removeSelection)
		('basic inspect'				inspectBasic)).
	