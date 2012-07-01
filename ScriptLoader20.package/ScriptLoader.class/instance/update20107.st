pharo - updates
update20107
	"self new update20107"
	self withUpdateLog: ' Issue 6016:	privateAnnouncer is not used and this is not good
		http://code.google.com/p/pharo/issues/detail?id=6016
	'.
	self loadTogether: self script97 merge: false.
	self flushCaches.
