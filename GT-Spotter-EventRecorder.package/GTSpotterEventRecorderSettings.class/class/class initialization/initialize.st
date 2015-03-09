initialize
	super initialize.
	Smalltalk addToStartUpList: self.
	self loadPreferences.