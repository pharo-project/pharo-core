pharo - updates
update20043
	"self new update20043"
	self withUpdateLog: ' Issue 5744:	Clean up Temp Embedding 2): DoIts
	http://code.google.com/p/pharo/issues/detail?id=5744'.
	self loadTogether: self script35 merge: false.
	self flushCaches.
