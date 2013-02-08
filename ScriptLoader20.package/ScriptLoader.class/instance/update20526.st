pharo - updates
update20526
	"self new update20526"
	self withUpdateLog: 'Issue 7284:	Cannot run gofer load twice => Error: cannot remove non empty category
	http://code.google.com/p/pharo/issues/detail?can=2&q=7284
	
(part 1)'.
	self loadTogether: self script503 merge: false.
	self flushCaches.
