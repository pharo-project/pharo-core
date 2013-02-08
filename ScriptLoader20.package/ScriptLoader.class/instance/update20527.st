pharo - updates
update20527
	"self new update20527"
	self withUpdateLog: 'Issue 7284:	Cannot run gofer load twice => Error: cannot remove non empty category
	http://code.google.com/p/pharo/issues/detail?can=2&q=7284
	
(part 2)'.
	self loadTogether: self script504 merge: false.
	self flushCaches.
