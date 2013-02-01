pharo - updates
update20403
	"self new update20403"
	self withUpdateLog: 'Issue 6989:	Move DebuggerMethodMap to Compiler package
	http://code.google.com/p/pharo/issues/detail?id=6989
	
Issue 6894:	Add Error tolerant parsing to RB
	http://code.google.com/p/pharo/issues/detail?id=6894
'.
	self loadTogether: self script382 merge: false.
	self flushCaches.
