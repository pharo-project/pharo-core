pharo - updates
update20446
	"self new update20446"
	self withUpdateLog: ' Issue 7157:	part two of LayoutFrame users rewriting
	http://code.google.com/p/pharo/issues/detail?id=7157
	
'.
	self loadTogether: self script425 merge: false.
	self flushCaches.
