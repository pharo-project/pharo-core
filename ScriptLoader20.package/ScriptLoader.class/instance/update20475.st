pharo - updates
update20475
	"self new update20475"
	self withUpdateLog: 'Issue 7264:	Error in nautilus while renaming a package
	http://code.google.com/p/pharo/issues/detail?id=7264
	
Issue 7260:	Fix Spec
	http://code.google.com/p/pharo/issues/detail?id=7260'.
	self loadTogether: self script453 merge: false.
	self flushCaches.
