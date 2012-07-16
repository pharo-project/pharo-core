pharo - updates
update20211
	"self new update20211"
	self withUpdateLog: 'Issue 6343:	move Windows on screen should take in account the task bar
	http://code.google.com/p/pharo/issues/detail?id=6343
	
Issue 6341:	ClassDescription>>#organization send #recoverFromMDFaultWithTrace
	http://code.google.com/p/pharo/issues/detail?id=6341
	
Issue 5131:	Error accepting Trait method referencing undefined class
	http://code.google.com/p/pharo/issues/detail?id=5131'.
	self loadTogether: self script201 merge: false.
	self flushCaches.
