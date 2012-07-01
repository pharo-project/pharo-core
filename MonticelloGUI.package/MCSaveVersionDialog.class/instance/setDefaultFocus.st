morphic ui
setDefaultFocus
	(self findTextMorph: #logMessage)
		takeKeyboardFocus;
		selectAll;
		acceptAction: [ :contents| 
			TextEditorDialogWindow autoAccept
				ifTrue: [	self accept ]].