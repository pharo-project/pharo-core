pharo - updates
update20558
	"self new update20558"
	self withUpdateLog: 'Issue 7542:	invalid selection of classes when old style keybindings are activated
	http://code.google.com/p/pharo/issues/detail?id=7542
	
Issue 7543:	add ReleaseTest for obsolete Behaviors
	http://code.google.com/p/pharo/issues/detail?id=7543
'.
	self loadTogether: self script533 merge: false.
	self flushCaches.
