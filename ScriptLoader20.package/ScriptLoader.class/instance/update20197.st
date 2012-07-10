pharo - updates
update20197
	"self new update20197"
	self withUpdateLog: 'Issue 6312:	Failing test on windows: MCDataStreamTest
	http://code.google.com/p/pharo/issues/detail?id=6312
	
Issue 6310:	Failing test on Windows: ZipArchiveTest>>testCreateWithRelativeNames
	http://code.google.com/p/pharo/issues/detail?id=6310'.
	self loadTogether: self script187 merge: false.
	self flushCaches.
