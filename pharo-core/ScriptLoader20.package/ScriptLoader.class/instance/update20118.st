pharo - updates
update20118
	"self new update20118"
	self withUpdateLog: '- Issue 6038:	ProtoObject should NOT implement #rehash. Thanks Mariano Martinez-Peck. :)
	http://code.google.com/p/pharo/issues/detail?id=6038'.
	self loadTogether: self script108 merge: false.
	self flushCaches.
