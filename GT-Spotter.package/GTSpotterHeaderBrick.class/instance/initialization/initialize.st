initialize
	super initialize.
	
	self searchField: self newSearchField.
	#GTSpotterEventRecorderSettings asClassIfPresent: [ 
		self settingsButton: self newSettingsButton ].
	self closeButton: self newCloseButton.
	