buildEditor
	editor := RubScrolledTextMorph new.
	editor setText: stringMorph contents.
	stringMorph activeHand addEventListener: self.
	editor announcer weak subscribe: MorphLostFocus send: #whenEditorLostFocus: to: self.
	editor announcer weak subscribe: RubTextAccepted send: #whenTextAccepted: to: self.
	editor announcer weak subscribe: RubReturnEntered send: #whenReturnEntered: to: self.
	editor announcer weak subscribe: RubKeystroke send: #whenKeystroke: to: self.
	editor announcer weak subscribe: MorphDeleted send: #whenEditorDeleted: to: self.
	editor position: stringMorph boundsInWorld topLeft - (2@2).
	editor beWrapped.
	editor font: stringMorph font.
	editor width: stringMorph width + 50.
	editor margins: (2 @ 0 corner: 2 @ 1).
	editor selectFrom: 1 to: stringMorph contents size.
	editor textArea takeKeyboardFocus.
	editor textArea withoutSelectionBar.
	^ editor