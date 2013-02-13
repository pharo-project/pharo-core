pharo - updates
update20538
	"self new update20538"
	self withUpdateLog: 'Issue 7487:	Testrunner calls #pragmas a class not implementing it
	http://code.google.com/p/pharo/issues/detail?id=7487
	
Issue 7341:	Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	http://code.google.com/p/pharo/issues/detail?id=7341
	
Issue 7485:	Make SmalltalkImage>>#downloadSources behavior an optional setting and default to false
	http://code.google.com/p/pharo/issues/detail?id=7485'.
	self loadTogether: self script513 merge: false.
	"MCMockClassA compileAll."
	self flushCaches.
