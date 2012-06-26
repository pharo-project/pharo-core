pharo - updates
update20036
	"self new update20036"
	self withUpdateLog: 'Issue 5740:	Clean up Temp Embedding 1): Traits
	http://code.google.com/p/pharo/issues/detail?id=5740
'.
	self loadTogether: self script30 merge: false.
	self flushCaches.
