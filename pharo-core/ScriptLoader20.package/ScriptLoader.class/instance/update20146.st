pharo - updates
update20146
	"self new update20146"
	self withUpdateLog: ' Issue 6097:	Bad source and changes path for one click on Windows (Jenkins?)
	http://code.google.com/p/pharo/issues/detail?id=6097'.
	self loadTogether: self script136 merge: false.
	self flushCaches.
