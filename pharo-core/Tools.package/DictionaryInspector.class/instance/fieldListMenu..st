menu
fieldListMenu: aMenu

	^ aMenu labels:
'inspect
copy name
references
objects pointing to this value
senders of this key
refresh view
add key
rename key
remove
basic inspect'
	lines: #(6 9)
	selections: #(inspectSelection copyName selectionReferences objectReferencesToSelection sendersOfSelectedKey refreshView addEntry renameEntry removeSelection inspectBasic)
