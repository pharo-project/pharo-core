pharo - updates
update20416
	"self new update20416"
	self withUpdateLog: 'Issue 7032:	DummySystemProgressItem is used only by UIManger --> move there
	http://code.google.com/p/pharo/issues/detail?id=7032
	
Issue 7016:	repackage restoreAllNotifications
	http://code.google.com/p/pharo/issues/detail?id=7016
	
'.
	self loadTogether: self script395 merge: false.
	self flushCaches.
