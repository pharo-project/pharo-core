pharo - updates
update20325
	"self new update20325"
	self withUpdateLog: 'Issue 6771:	Do not use #labels:lines:selections: for building menus
	http://code.google.com/p/pharo/issues/detail?id=6771'.
	self loadTogether: self script310 merge: false.
	self flushCaches.
