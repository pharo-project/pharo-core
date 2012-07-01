pharo - updates
update20110
	"self new update20110"
	self withUpdateLog: 'Issue 5977:	Rpackage may not handle well method removal in traits
	http://code.google.com/p/pharo/issues/detail?id=5977
	
Issue 5997:	Classes that implement unsafe equals
	http://code.google.com/p/pharo/issues/detail?id=5997'.
	self loadTogether: self script100 merge: false.
	self flushCaches.
