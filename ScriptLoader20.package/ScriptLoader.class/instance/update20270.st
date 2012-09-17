pharo - updates
update20270
	"self new update20270"
	self withUpdateLog: 'Issue 6600:	TestRunner >> methodChanged: is wrong
	http://code.google.com/p/pharo/issues/detail?id=6600
	
Issue 6598:	We have a lot of incorrect CompiledMethods hanging around
	http://code.google.com/p/pharo/issues/detail?id=6598'.
	self loadTogether: self script257 merge: false.
	Compiler recompileAll.
	self flushCaches.
