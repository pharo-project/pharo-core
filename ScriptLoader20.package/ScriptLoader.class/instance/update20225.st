pharo - updates
update20225
	"self new update20225"
	self withUpdateLog: 'Issue 6346:	Failing test: #testImportExtensionFromParentPackageRegisterExtensionInParentPackage	
	http://code.google.com/p/pharo/issues/detail?id=6346
	
Issue 6396:	Monticello extension to tools (ChangeList)
	http://code.google.com/p/pharo/issues/update.do?id=6396

Issue 6412: Startup warning for old File Primitives
	http://code.google.com/p/pharo/issues/list?can=2&q=6412'.
	self loadTogether: self script213 merge: false.
	self flushCaches.
