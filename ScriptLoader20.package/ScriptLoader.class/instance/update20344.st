pharo - updates
update20344
	"self new update20344"
	self withUpdateLog: 'Issue 4915:	compiler should answer the same result as the non-inlined one when the return value is asked for.
	http://code.google.com/p/pharo/issues/detail?id=4915:
	
'.
	self loadTogether: self script326 merge: false.
	self flushCaches.
