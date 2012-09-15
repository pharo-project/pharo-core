pharo - updates
update20254
	"self new update20254"
	self withUpdateLog: 'Issue 6571:	update Ring
	http://code.google.com/p/pharo/issues/detail?id=6571
	
(step 2)

- removed zombie methods'.
	self loadTogether: self script241 merge: false.
	self flushCaches.
