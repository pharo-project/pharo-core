pharo - updates
update20014
	"self new update20014"
	self withUpdateLog: 'Issue 5699:	Failing test: EventHandlerTest
	http://code.google.com/p/pharo/issues/detail?id=5699
	'.
	self loadTogether: self script8 merge: false.
	self flushCaches.
