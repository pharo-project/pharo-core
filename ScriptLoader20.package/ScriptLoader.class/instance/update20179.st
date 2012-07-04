pharo - updates
update20179
	"self new update20179"
	self withUpdateLog: 'Issue 6241:	Fix NewVersionBorwser
	http://code.google.com/p/pharo/issues/detail?id=6241
	
Issue 6246:	RGMethodDefintion asMCMethodDefinition cache was removed	
	http://code.google.com/p/pharo/issues/detail?id=6246
	
Issue 6232:	Remove SystemChangeNotifierTests
	http://code.google.com/p/pharo/issues/detail?id=6232
	
Issue 6215:	Test failing for MCDirectoryRepositoryTest
	http://code.google.com/p/pharo/issues/detail?id=6215
	
Issue 6138:	AbsolutePath not absolute on Windows
	http://code.google.com/p/pharo/issues/detail?id=6138'.
	self loadTogether: self script169 merge: false.
	self flushCaches.
