pharo - updates
update20535
	"self new update20535"
	self withUpdateLog: 'Issue 7484:	One Click on Windows: Make sure it works
	http://code.google.com/p/pharo/issues/detail?id=7484

Issue 6657:	[ENH] Spec Request : make nextFocus / previousFocus Keymapping-based
	http://code.google.com/p/pharo/issues/detail?id=6657'.
	self loadTogether: self script512 merge: false.
	self flushCaches.
