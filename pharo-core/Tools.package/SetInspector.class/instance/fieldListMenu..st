menu
fieldListMenu: aMenu

	^ aMenu labels:
'inspect
copy name
refresh view
remove
basic inspect'
	lines: #( 5 8)
	selections: #(inspectSelection copyName update removeSelection inspectBasic)
