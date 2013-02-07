pharo - updates
update20511
	"self new update20511"
	self withUpdateLog: 'Issue 7414:	Make the default compiler a class var in SmalltalkImage
	http://code.google.com/p/pharo/issues/detail?id=7414'.
	self loadTogether: self script489 merge: false.
	self flushCaches.
