pharo - updates
update20365
	"self new update20365"
	self withUpdateLog: 'Issue 6880:	Metacello CLI should support #last version
	http://code.google.com/p/pharo/issues/detail?id=6880'.
	self loadTogether: self script347 merge: false.
	self flushCaches.
