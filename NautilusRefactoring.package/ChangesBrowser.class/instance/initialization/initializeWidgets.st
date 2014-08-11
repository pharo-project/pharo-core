initializeWidgets

	cancelButton := self newButton.
	acceptButton := self newButton.
	changesTree := self newTree.
	textArea := self newText.
	
	self initializeAcceptButton.
	self initializeCancelButton.
	self initializeChangesTree.
	self initializeTextArea.
	self setFocus.
	self
		bindKeyCombination: PharoShortcuts current acceptShortcut toAction: [ self accept ];
		bindKeyCombination: Character escape toAction: [ self cancel ]