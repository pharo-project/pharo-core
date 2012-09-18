pharo - updates
update20294
	"self new update20294"
	self withUpdateLog: 'Issue 6680:	Failing test: testInstanceSideMethodsWithNilKeyInLastLiteral
	http://code.google.com/p/pharo/issues/detail?id=6680
	
Issue 6691:	Workspace completion is not working
	http://code.google.com/p/pharo/issues/detail?id=6691
	
Compiler recompileAll.'.
	self loadTogether: self script281 merge: false.
	Compiler recompileAll.
	self flushCaches.
