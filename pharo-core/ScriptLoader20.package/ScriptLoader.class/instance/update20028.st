pharo - updates
update20028
	"self new update20028"
	self withUpdateLog: 'Issue 5734:	Clients of CompiledMethod should not call #getSource
	http://code.google.com/p/pharo/issues/detail?id=5734
	
Issue 5735:	add #generateWithSources to MethodNode
	http://code.google.com/p/pharo/issues/detail?id=5735'.
	self loadTogether: self script22 merge: false.
	self flushCaches.
