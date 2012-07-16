pharo - updates
update20216
	"self new update20216"
	self withUpdateLog: 'Issue 6387:	Failing Zinc.Tests.ZnClientTests.testGetSmallHTMLStreaming Fix
	http://code.google.com/p/pharo/issues/detail?id=6387
	
Issue 6381:	Small Text-Edition Cleanup
	http://code.google.com/p/pharo/issues/detail?id=6381
	
Issue 6388:	infinite loop in RPackage>>addClassDefinition:toClassTag:
	http://code.google.com/p/pharo/issues/detail?id=6388'.
	self loadTogether: self script206 merge: false.
	self flushCaches.
