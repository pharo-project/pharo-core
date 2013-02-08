pharo - updates
update20524
	"self new update20524"
	self withUpdateLog: 'Issue 7027:	Wrong halo handle balloon text showing
	http://code.google.com/p/pharo/issues/detail?id=7027
'.
	self loadTogether: self script501 merge: false.
	self flushCaches.
