pharo - updates
update20241
	"self new update20241"
	(MCWorkingCopy forPackage: (MCPackage named: 'System')) unregister.
	self withUpdateLog: 'Issue 6498:	Remove old events in favor of System announcements - Step 1
	http://code.google.com/p/pharo/issues/detail?id=6498
	
Issue 6476:	one Monticello package that should not be there
	http://code.google.com/p/pharo/issues/detail?id=6476
	
Issue 6505:	hasUnacceptedEdits breaks the debugger
	http://code.google.com/p/pharo/issues/detail?id=6505
	
Issue 6508:	Tests.Release.ReleaseTest.testMethodsWithUnboundGlobals
	http://code.google.com/p/pharo/issues/detail?id=6508'.
	self loadTogether: self script228 merge: false.
	self flushCaches.
