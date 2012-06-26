pharo - updates
update20155
	"self new update20155"
	self withUpdateLog: '- Issue 6091: File Extensions and fixes
	http://code.google.com/p/pharo/issues/detail?id=6091
	
'.
	self loadTogether: self script145 merge: false.
	self flushCaches.
