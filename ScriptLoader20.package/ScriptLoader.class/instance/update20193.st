pharo - updates
update20193
	"self new update20193"
	self withUpdateLog: 'Issue 6275:	Failing tests related to Traits
		http://code.google.com/p/pharo/issues/detail?id=6275'.
	self loadTogether: self script183 merge: false.
	self flushCaches.
