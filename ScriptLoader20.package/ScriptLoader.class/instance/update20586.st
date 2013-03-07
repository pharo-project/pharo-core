pharo - updates
update20586
	"self new update20586"
	self withUpdateLog: 'Issue 7458:	Changing method in debugger (in a block activation) changes CompiledMethod but not source code
	http://code.google.com/p/pharo/issues/detail?id=7458'.
	self loadTogether: self script560 merge: false.
	self flushCaches.
