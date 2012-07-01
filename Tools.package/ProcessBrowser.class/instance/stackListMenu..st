stack list
stackListMenu: aMenu 
	| menu |
	selectedContext
		ifNil: [^ aMenu].
	menu := aMenu
				labels: 'Inspect context (c)
Explore context (C)
Inspect receiver (i)
Explore receiver (I)
Browse (b)'
				lines: #(2 4 )
				selections: #(#inspectContext #exploreContext #inspectReceiver #exploreReceiver #browseContext ).
	^ menu