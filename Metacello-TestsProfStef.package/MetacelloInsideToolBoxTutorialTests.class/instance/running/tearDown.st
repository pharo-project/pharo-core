tearDown
	super tearDown.
	Smalltalk at: #ConfigurationOfExample ifPresent: [:cl | cl removeFromSystem ]
