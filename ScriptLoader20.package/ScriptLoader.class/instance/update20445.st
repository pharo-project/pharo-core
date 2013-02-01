pharo - updates
update20445
	"self new update20445"
	self withUpdateLog: ' Issue 7151:	Rewriting LayoutFrame Users to use the new protocol
	http://code.google.com/p/pharo/issues/detail?id=7151
	
'.
	self loadTogether: self script424 merge: false.
	self flushCaches.
