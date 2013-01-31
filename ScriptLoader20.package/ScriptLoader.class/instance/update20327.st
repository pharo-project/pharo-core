pharo - updates
update20327
	"self new update20327"
	self withUpdateLog: ' Issue 6765:	Rename Method Refactoring fails on Override
	http://code.google.com/p/pharo/issues/detail?id=6765'.
	self loadTogether: self script312 merge: false.
	self flushCaches.
