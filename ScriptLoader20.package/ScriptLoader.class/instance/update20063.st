pharo - updates
update20063
	"self new update20063"
	self withUpdateLog: 'Issue 5852:	remove NepaleseEnvironment
	http://code.google.com/p/pharo/issues/detail?id=5852
	
Issue 5312:	Move/Deprecate StandardFileStream browserRequest protocol
	http://code.google.com/p/pharo/issues/detail?id=5312'.
	self loadTogether: self script53 merge: false.
	self flushCaches.
