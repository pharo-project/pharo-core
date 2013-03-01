pharo - updates
update20576
	"self new update20576"
	self withUpdateLog: 'Issue 7589:	ScriptLoader is too large to ship
	http://code.google.com/p/pharo/issues/detail?id=7589'.
	self loadTogether: self script551 merge: false.
	self flushCaches.
