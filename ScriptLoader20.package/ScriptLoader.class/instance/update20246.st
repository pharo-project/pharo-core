pharo - updates
update20246
	"self new update20246"
	self withUpdateLog: 'Issue 6518:	SystemChangeNotifier - cleanup step 4
	http://code.google.com/p/pharo/issues/detail?id=6518
	
Issue 6524:	StartupPreferences loads non-Smalltalk files
	http://code.google.com/p/pharo/issues/detail?id=6524
	
Issue 6528:	GroupAnnouncer announcer DNU
	http://code.google.com/p/pharo/issues/detail?id=6528
	
Issue 6529:	Method changes not picked up by MC Browser
	http://code.google.com/p/pharo/issues/detail?id=6529'.
	self loadTogether: self script233 merge: false.
	SystemAnnouncer restoreAllNotifications.
	self flushCaches.
