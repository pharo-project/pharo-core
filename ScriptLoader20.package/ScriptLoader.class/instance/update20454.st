pharo - updates
update20454
	"self new update20454"
	self withUpdateLog: 'Issue 7165:	CleanUp MethodChangeRecord
	http://code.google.com/p/pharo/issues/detail?id=7165'.
	self loadTogether: self script433 merge: false.
	self flushCaches.
