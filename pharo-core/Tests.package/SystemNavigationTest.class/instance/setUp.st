setUp-tearDown
setUp
	super setUp. 
	
	oldMonticelloAnnouncer := SystemAnnouncer announcer.
	SystemAnnouncer announcer: nil.
	oldPrivateAnnouncer := SystemAnnouncer announcer.
	SystemAnnouncer privateAnnouncer: nil.
	
	navigator := self createSystemNavigationToTest.
	classFactory := self createClassFactory.