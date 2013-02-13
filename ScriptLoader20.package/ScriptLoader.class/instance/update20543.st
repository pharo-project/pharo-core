pharo - updates
update20543
	"self new update20543"
	self withUpdateLog: 'Issue 7502:	Failing test: DiskFileSystemTest>>#testDefaultWorkingDirectory
	http://code.google.com/p/pharo/issues/detail?id=7502'.
	self loadTogether: self script518 merge: false.
	self flushCaches.
