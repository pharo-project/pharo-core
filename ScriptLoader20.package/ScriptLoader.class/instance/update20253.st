pharo - updates
update20253
	"self new update20253"
	self withUpdateLog: 'Issue 6571:	update Ring
	http://code.google.com/p/pharo/issues/detail?id=6571
	
(step 1)'.
	self loadTogether: self script240 merge: false.
	self flushCaches.
