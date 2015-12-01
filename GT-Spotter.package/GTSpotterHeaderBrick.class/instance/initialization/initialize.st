initialize
	super initialize.
	
	self searchField: self newSearchField.
	#GTEventRecorderSettings asClassIfPresent: [ 
		self settingsButton: self newSettingsButton ].
	self closeButton: self newCloseButton.
	