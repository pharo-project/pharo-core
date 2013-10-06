refreshSubMenu: aMenu
	"Add a refresh button in the inspector. Not used anymore since there is this loop in initializeInspectorLoop."

	aMenu 
		add: 'Refresh' translated
			target: self
			selector: #refresh.
	
	aMenu addLine.
	