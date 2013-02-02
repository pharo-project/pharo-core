pharo - updates
update20458
	"self new update20458"
	self withUpdateLog: 'Issue 7179:	Fixed AsmJit extension methods
	http://code.google.com/p/pharo/issues/detail?id=7179
	
'.
	self loadTogether: self script436 merge: false.
	self flushCaches.
