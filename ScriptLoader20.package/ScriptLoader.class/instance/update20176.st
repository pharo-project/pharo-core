pharo - updates
update20176
	"self new update20176"
	Smalltalk globals at: #CodeUpdate ifPresent: [:class | class uninstall].
	self withUpdateLog: 'Issue 6226:	KernelTests-Number add a test for covering a bug
	http://code.google.com/p/pharo/issues/detail?id=6226
	
Issue 6224:	New SpecLayout builder
	http://code.google.com/p/pharo/issues/detail?id=6224
	
Issue 4248:	Clean CodeUpdate and remove from image startup
	http://code.google.com/p/pharo/issues/detail?id=4248
	
Issue 6228:	Fix squuezeOutNumber
	http://code.google.com/p/pharo/issues/detail?id=6228'.
	self loadTogether: self script166 merge: false.
	self flushCaches.
