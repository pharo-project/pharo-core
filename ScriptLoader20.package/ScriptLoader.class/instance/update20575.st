pharo - updates
update20575
	"self new update20575"
	self withUpdateLog: 'Issue 7621:	Protocols are sometimes messed up
	https://code.google.com/p/pharo/issues/detail?id=7621
	
Issue 7620:	remove IslandVMTweaksTestCase
	https://code.google.com/p/pharo/issues/detail?id=7620
	
Issue 7615:	unload NativeBoost tests for now...
	https://code.google.com/p/pharo/issues/detail?id=7615
	
Issue 7609:	[Horrible Error]: Class creation not logged in changes
	https://code.google.com/p/pharo/issues/detail?id=7609
'.
	self loadTogether: self script550 merge: false.
	ScriptLoader new unloadPackageNamed: 'NativeBoost-Tests'.
SystemAnnouncer uniqueInstance unsubscribe: ChangesLog default.
ChangesLog default registerToAnnouncements.
	self flushCaches.
