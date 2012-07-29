setUp-tearDown
setUp
	super setUp. 
	
	oldMonticelloAnnouncer := SystemAnnouncer uniqueInstance.
	SystemAnnouncer announcer: nil.
	
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer.
	SystemAnnouncer privateAnnouncer: nil.
	
	navigator := self createSystemNavigationToTest.
	classFactory := self createClassFactory.