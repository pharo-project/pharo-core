pharo - updates
update20471
	"self new update20471"
	self withUpdateLog: 'Issue 7252:	update --from-file for staged updates
	http://code.google.com/p/pharo/issues/detail?id=7252'.
	self loadTogether: self script449 merge: false.
	self flushCaches.
