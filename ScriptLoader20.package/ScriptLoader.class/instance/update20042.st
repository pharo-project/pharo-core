pharo - updates
update20042
	"self new update20042"
	self withUpdateLog: 'Issue 5777:	Test and workaround for methods with incorrect global literals
	http://code.google.com/p/pharo/issues/detail?id=5777

Issue 5781:	Add nice diff morph to compare to current and compare to version...
	http://code.google.com/p/pharo/issues/detail?id=5781'.
	self loadTogether: self script34 merge: false.
	Compiler recompileAll.
	self flushCaches.
