pharo - updates
update20235
	"self new update20235"
	self withUpdateLog: 'Issue 6467:	Remove SystemChangeNotifier 2 - All events using SystemAnnouncer
	http://code.google.com/p/pharo/issues/detail?id=6467

(just loading a method needed, still not finished) 
'.
	self loadTogether: self script222 merge: false.
	self flushCaches.
