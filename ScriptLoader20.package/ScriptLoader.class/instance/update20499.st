pharo - updates
update20499
	"self new update20499"
	self withUpdateLog: 'Issue 7326:	cmd+m, cmd+n broken in senders/implementors browser
	http://code.google.com/p/pharo/issues/detail?id=7326
	
Issue 7346:	[ENH]: Spec: Add DateModel
	http://code.google.com/p/pharo/issues/detail?id=7346
	
Issue 7324:	Andreas Profiler
	http://code.google.com/p/pharo/issues/detail?id=7324
	'.
	self loadTogether: self script477 merge: false.
	self flushCaches.
