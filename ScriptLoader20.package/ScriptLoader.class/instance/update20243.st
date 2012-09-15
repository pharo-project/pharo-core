pharo - updates
update20243
	"self new update20243"
	self withUpdateLog: 'Issue 6515:	SystemChangeNotifier - cleanup step 2 - Remove old events in favor of System announcements
	http://code.google.com/p/pharo/issues/detail?id=6515'.
	self loadTogether: self script230 merge: false.
	AbstractNautilusUI initialize.
.
	self flushCaches.
