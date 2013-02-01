pharo - updates
update20397
	"self new update20397"
	self withUpdateLog: 'Issue 6375:	OCompletion uses a lot of memory
	http://code.google.com/p/pharo/issues/detail?id=6375
	
Issue 6966:	LogForImplementor is empty and unused
	http://code.google.com/p/pharo/issues/detail?id=6966
	
Issue 6968:	temps are note printed in PharoDebug.log
	http://code.google.com/p/pharo/issues/detail?id=6968'.
	self loadTogether: self script376 merge: false.
	self flushCaches.
