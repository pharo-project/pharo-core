setup
tearDown
	"If after a test, an orgizer is left somewhere, still registered at the mockAnnouncer, we don't want it to impact the system after the test. By disabling the MockSystemAnnouncer, nothing will happen when any kind of event will be lanched from the system"
	self toDoAtTheEnd.
	RMockSystemAnnouncer disableAnnouncerForSystemChanges.	
	RMockSystemAnnouncer mockAnnouncer unsubscribe: self emptyOrganizer.
	MCWorkingCopy removeDependent: self emptyOrganizer.
	self cleanClassesPackagesAndCategories.
	Author fullName ifNil: [Author fullName: nil].
	
	super tearDown.