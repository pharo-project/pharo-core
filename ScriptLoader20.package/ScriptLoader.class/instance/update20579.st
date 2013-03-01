pharo - updates
update20579
	"self new update20579"
	self withUpdateLog: 'Issue 7627:	revert SharedPool>>#bindingOf: removal
	http://code.google.com/p/pharo/issues/detail?id=7627'.
	self loadTogether: self script554 merge: false.
	self flushCaches.
