selection: aSelection
	| item |
	super selection: aSelection.
	item :=  self selectedNode.
	item ifNotNil: [ item := item item ].
	wrapper method: item.
	self changed: #textToDisplay.
	self updateTextArea
