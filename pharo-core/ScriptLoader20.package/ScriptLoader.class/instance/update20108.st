pharo - updates
update20108
	"self new update20108"
	self withUpdateLog: ' Issue 6015:	ClassBuilderFormatTests raises duplicated announcements. Thanks Guillermo Polito
		http://code.google.com/p/pharo/issues/detail?id=6015
	'.
	self loadTogether: self script98 merge: false.
	self flushCaches.
