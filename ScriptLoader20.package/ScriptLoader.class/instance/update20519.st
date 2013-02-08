pharo - updates
update20519
	"self new update20519"
	self withUpdateLog: 'Issue 7438:	[ENH]: Nautilus Help
	http://code.google.com/p/pharo/issues/detail?id=7438
	
Issue 7427:	failing test for SmalllintManifestCheckerTest
	http://code.google.com/p/pharo/issues/detail?id=7427
	
Issue 7424:	[Bug]: Removing a class does not mark the package as dirty
	http://code.google.com/p/pharo/issues/detail?id=7424
	
Issue 7209:	ChangesBrowser should execute refactorings in order
	http://code.google.com/p/pharo/issues/detail?id=7209'.
	self loadTogether: self script496 merge: false.
	MCWorkingCopy registerForNotifications.
	self flushCaches.
