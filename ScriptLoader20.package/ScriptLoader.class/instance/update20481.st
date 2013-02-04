pharo - updates
update20481
	"self new update20481"
	self withUpdateLog: 'Issue 7275:	Sanitize String with/without selectors
	http://code.google.com/p/pharo/issues/detail?id=7275
	
Issue 7288:	Clean methods are just do super send
	http://code.google.com/p/pharo/issues/detail?id=7288
	
'.
	self loadTogether: self script459 merge: false.
	self flushCaches.
