pharo - updates
update20409
	"self new update20409"
	self withUpdateLog: 'Issue 7000:	Cleanup unused code in BitBlt class
	http://code.google.com/p/pharo/issues/detail?id=7000
	
Issue 7003:	use ProvideAnswerNotification for DummyUIManager requests
	http://code.google.com/p/pharo/issues/detail?id=7003
	
Issue 6956:	Some Ring tests are dependent on Monticello
	http://code.google.com/p/pharo/issues/detail?id=6956
	
'.
	self loadTogether: self script388 merge: false.
	self flushCaches.
