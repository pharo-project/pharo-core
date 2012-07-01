pharo - updates
update20088
	"self new update20088"
	self withUpdateLog: 'Issue 5889:	CodeImport package contains tests
	http://code.google.com/p/pharo/issues/detail?id=5889
	
Issue 5940:	Small DataStream Cleaup
	http://code.google.com/p/pharo/issues/detail?id=5940
	
Issue 5939:	Failing test: #testFtpRepository
	http://code.google.com/p/pharo/issues/detail?id=5939
	
Issue 5809:	System-CommandLine has poor packaging
	http://code.google.com/p/pharo/issues/detail?id=5809'.
	self loadTogether: self script77 merge: false.
	self flushCaches.
