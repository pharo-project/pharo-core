stack list
stackListMenu: aMenu 
	selectedContext ifNil: [^ aMenu].
	^aMenu addList: #(
		('Inspect context (c)'			inspectContext)
		('Explore context (C)'			exploreContext)
		-			
		('Inspect receiver (i)'			inspectReceiver)
		('Explore receiver (I)'			exploreReceiver)
		-
		('Browse (b)'					browseContext))