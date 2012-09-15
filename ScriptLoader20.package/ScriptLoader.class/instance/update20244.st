pharo - updates
update20244
	"self new update20244"
	self withUpdateLog: 'Issue 6516:	SystemChangeNotifier - cleanup Step 3
	http://code.google.com/p/pharo/issues/detail?id=6516'.
	self loadTogether: self script231 merge: false.
	SystemAnnouncer restoreAllNotifications.
SystemAnnouncer organization: nil.
SystemAnnouncer class organization: nil.
	self flushCaches.
