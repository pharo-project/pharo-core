registerToAnnouncements
	self registerToSystemAnnouncements.
	(Smalltalk globals
		at: #TestCase
		ifPresent: [ self registerToTestAnnouncements ]). 
	self registerToMCAnnouncements.		
	self registerToGroupAnnouncements. 