pharo - updates
update20307
	"self new update20307"
	self withUpdateLog: 'Issue 6724:	String additions + cleanup
	http://code.google.com/p/pharo/issues/detail?id=6724
	
Issue 6531:	Not possible to save one click image on Windows
	http://code.google.com/p/pharo/issues/detail?id=6531
	'.
	self loadTogether: self script294 merge: false.
	self flushCaches.
