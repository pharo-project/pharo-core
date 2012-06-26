pharo - updates
update20006
	"self new update20006"
	self withUpdateLog: 'Issue 5615:	clean up #contextForLocalVariables
	http://code.google.com/p/pharo/issues/detail?id=5615'.
	self loadTogether: self script2 merge: false.
	self flushCaches.
