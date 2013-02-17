pharo - updates
update20551
	"self new update20551"
	self withUpdateLog: 'Issue 7523:	Now update the class icon when method modified or removed
	http://code.google.com/p/pharo/issues/detail?id=7523
	
Issue 7522:	rename File out Stack to Fuel out Stack
	http://code.google.com/p/pharo/issues/detail?id=7522'.
	self loadTogether: self script526 merge: false.
	self flushCaches.
