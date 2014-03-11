updateContextInspectorFromContext: aContext
	| oldSelection newSelectionIndex   |
	
	oldSelection := contextInspector list selectedItem.
	
	contextInspector inspect: aContext.
	
	newSelectionIndex := 1.
	oldSelection ifNotNil: 
	[	contextInspector list getItems withIndexDo: 
			[ :item :index | item label = oldSelection label ifTrue: [ newSelectionIndex := index ] ].
	].
	contextInspector list setSelectedIndex: newSelectionIndex.
