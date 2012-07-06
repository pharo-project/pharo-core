pharo - updates
update20189
	"self new update20189"
	self withUpdateLog: 'Issue 6280:	NonInteractiveTranscript streams do not survive restarts
	http://code.google.com/p/pharo/issues/detail?id=6280
	
Issue 6101:	MNU: ClassTrait>>methodsInProtocol:
	http://code.google.com/p/pharo/issues/detail?id=6101
	
Issue 5756:	Failing tests: MC loading/ unloading
	http://code.google.com/p/pharo/issues/detail?id=5756
	
Issue 5975:	Cleanup after using FileSystem everywhere
	http://code.google.com/p/pharo/issues/detail?id=5975'.
	self loadTogether: self script179 merge: false.
	MCCacheRepository default enable.
.
	self flushCaches.
