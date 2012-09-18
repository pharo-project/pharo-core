pharo - updates
update20291
	"self new update20291"
	self withUpdateLog: 'Issue 6637:	Unused global variable?
	http://code.google.com/p/pharo/issues/detail?id=6637
	
Issue 6616:	ReleaseTest for RPackageOrganizer
	http://code.google.com/p/pharo/issues/detail?id=6616'.
	self loadTogether: self script278 merge: false.
	Smalltalk globals removeKey: #ScheduledControllers.
	self flushCaches.
