pharo - updates
update20284
	"self new update20284"
	self withUpdateLog: 'Issue 6601:	Classes are not properly Updated
	http://code.google.com/p/pharo/issues/detail?id=6601
	
	
Compiler recompileAll.'.
	self loadTogether: self script271 merge: false.
	Compiler recompileAll.
	self flushCaches.
