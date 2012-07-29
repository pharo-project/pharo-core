pharo - updates
update20233
	"self new update20233"
	self withUpdateLog: 'Issue 6442:	Add temporal MCCacheRepository >> default
	http://code.google.com/p/pharo/issues/detail?id=6442
	
Issue 6439:	Add smalltalkhub convenience method for Gofer
	http://code.google.com/p/pharo/issues/detail?id=6439
	
Issue 6438:	Failing tests related to ChangeSet
	http://code.google.com/p/pharo/issues/detail?id=6438
	
Issue 6436:	Removing SystemChangeNotifier dependencies from some tests
	http://code.google.com/p/pharo/issues/detail?id=6436'.
	self loadTogether: self script220 merge: false.
	ChangeSet newChanges: ChangeSet current.
KMPragmaKeymapBuilder initialize.
RPackageOrganizer default registerInterestToSystemAnnouncement.
TestCase initialize.
MCPackageManager registerForNotifications.
MCWorkingCopy registerForNotifications.
	self flushCaches.
