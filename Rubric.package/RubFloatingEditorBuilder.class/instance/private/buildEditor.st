buildEditor
	editor := RubScrolledTextMorph new beForMinimalEditor.
	editor setText: self initialContents.
	World activeHand addEventListener: self.
	editor announcer subscribe: MorphLostFocus send: #whenEditorLostFocus: to: self.
	editor announcer subscribe: RubTextAccepted send: #whenTextAccepted: to: self.
	editor announcer subscribe: RubReturnEntered send: #whenReturnEntered: to: self.
	editor announcer subscribe: RubKeystroke send: #whenKeystroke: to: self.
	editor announcer subscribe: MorphDeleted send: #whenEditorDeleted: to: self.
	editor beWrapped.
	editor font: font.
	editor margins: (2 @ 0 corner: 2 @ 1).
	editor selectFrom: 1 to: initialContents size.
	editor textArea withoutSelectionBar.
	^ self customizedEditor.
