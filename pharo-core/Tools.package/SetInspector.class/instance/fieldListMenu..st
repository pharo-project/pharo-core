menu
fieldListMenu: aMenu

	^ aMenu labels:
'inspect
copy name
objects pointing to this value
refresh view
remove
basic inspect'
	lines: #( 5 8)
	selections: #(inspectSelection copyName objectReferencesToSelection update removeSelection inspectBasic)
