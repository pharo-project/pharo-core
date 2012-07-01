setup
setUp 
	"by only using the 'default' RMockEmptyPackageOrganizer, we make sure that each time a new intance of the organizer is created, we unregister safely the last one from teh announcer (see the code of resetDefault). Like that, this old instance will not impact the system anymore when an event will be launched"
	super setUp.
	
	emptyOrganizer := self organizer debuggingName: 'MCSynchronisation Package Organizer'; yourself.
	emptyOrganizer registerPackage: (self packageClass named: 'as yet unclassified').
	
	" commented it since we are using withOrganizer:do: 
	emptyOrganizer registerInterestToAnnouncer: RMockSystemAnnouncer mockAnnouncer."
	"we also register interest to monticello, to be able to test the synchronisation between it and RPackage"
		self organizer registerInterestToAnnouncer: MCWorkingCopy announcer. 
		
	"we have to unregister Monticello from system events to avoid errors when making our changes. Indeed, by default monticello make some request to the default organizer when changes are made in the system. But This default organizer does not register to system events during our tests"
	MCPackageManager unregisterForNotifications. 
	MCWorkingCopy unregisterForNotifications.
	"This is a second step of security. If by any chance, an Organizer instance persist in the system and is still registered to the (mock)announcer, we also control the (mock)announcer to be active only during the test "
	" commented it since we are using withOrganizer:do: 
	RMockSystemAnnouncer activateAnnouncerForSystemChanges."
	"we will create classes in those tests, we set the author name to avoid to have warning when running the tests"
	Author fullName ifNil: [Author fullName: 'Tester'].