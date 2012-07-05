pharo - updates
update20186
	"self new update20186"
	self withUpdateLog: 'Issue 6253:	Failing tests: Obsolete classes related to SpotLight
	http://code.google.com/p/pharo/issues/detail?id=6253'.
	self loadTogether: self script176 merge: false.
	self flushCaches.
