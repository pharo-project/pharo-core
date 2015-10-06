buildEditor

	editor := RubScrolledTextMorph new forbidMenu.
	editor setText: self initialContents.
	World activeHand addEventListener: self.
	editor announcer when: MorphLostFocus send: #whenEditorLostFocus: to: self.
	editor announcer when: RubTextAccepted send: #whenTextAccepted: to: self.
	editor announcer when: RubReturnEntered send: #whenReturnEntered: to: self.
	editor announcer when: RubKeystroke send: #whenKeystroke: to: self.
	editor announcer when: MorphDeleted send: #whenEditorDeleted: to: self.
	editor beWrapped.
	editor font: font.
	editor margins: (2 @ 0 corner: 2 @ 1).
	editor selectFrom: 1 to: initialContents size.
	editor textArea withoutSelectionBar.
	^ self customizedEditor.
