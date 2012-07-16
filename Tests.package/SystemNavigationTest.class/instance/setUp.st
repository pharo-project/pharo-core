setUp-tearDown
setUp
	super setUp. 
	
	oldMonticelloAnnouncer := SystemAnnouncer announcer.
	SystemAnnouncer announcer: nil.
	
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer.
	SystemAnnouncer privateAnnouncer: nil.
	
	navigator := self createSystemNavigationToTest.
	classFactory := self createClassFactory.