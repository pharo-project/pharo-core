pharo - updates
update20337
	"self new update20337"
	self withUpdateLog: 'Issue 6777:	Improve ChangesBrowser default behavior
		http://code.google.com/p/pharo/issues/detail?id=6777'.
	self loadTogether: self script319 merge: false.
	self flushCaches.
