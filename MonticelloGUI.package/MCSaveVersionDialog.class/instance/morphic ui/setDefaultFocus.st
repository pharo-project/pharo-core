setDefaultFocus
	(self findTextMorph: #logMessage)
		takeKeyboardFocus;
		selectAll;
		acceptAction: [ :contents | self accept ]