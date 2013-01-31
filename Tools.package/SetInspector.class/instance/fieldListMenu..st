menu
fieldListMenu: aMenu
	^aMenu addList: #(
		('inspect'			inspectSelection)
		('copy name'		copyName)
		('refresh view'		update)
		('remove'			removeSelection)
		('basic inspect'		inspectBasic))
