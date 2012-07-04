pharo - updates
update20180
	"self new update20180"
	self withUpdateLog: 'Issue 6245:	CommandLine handler tests failing
	http://code.google.com/p/pharo/issues/detail?id=6245
	
Issue 6212:	Failing test: SmalltalkImageTest>>testImageName
	http://code.google.com/p/pharo/issues/detail?id=6212
	
Issue 6238:	FS should provide posix permission
	http://code.google.com/p/pharo/issues/detail?id=6238
	
Issue 6104:	Fix in RecentSubmission
	http://code.google.com/p/pharo/issues/detail?id=6104'.
	self loadTogether: self script170 merge: false.
	self flushCaches.
