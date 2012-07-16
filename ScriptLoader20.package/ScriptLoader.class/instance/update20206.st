pharo - updates
update20206
	"self new update20206"
	self withUpdateLog: 'Issue 6353:	Cleanup support for Zaurus, WinCE and MacOS9
	http://code.google.com/p/pharo/issues/detail?id=6353
	
Issue 3496:	default should be replaced by new for SystemNavigation
	http://code.google.com/p/pharo/issues/detail?id=3496
	
Issue 6350:	StartupPreferences Cleanup
	http://code.google.com/p/pharo/issues/detail?id=6350
'.
	self loadTogether: self script196 merge: false.
	self flushCaches.
