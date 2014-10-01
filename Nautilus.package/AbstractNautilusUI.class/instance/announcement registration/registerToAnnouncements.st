registerToAnnouncements
	self registerToSystemAnnouncements.
	(Smalltalk 
		at: #TestCase
		ifPresent: [ self registerToTestAnnouncements ]). 
	self registerToMCAnnouncements.		
	self registerToGroupAnnouncements. 