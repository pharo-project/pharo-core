pharo - updates
update20300
	"self new update20300"
	self withUpdateLog: 'Issue 6712:	nautilus not working anymore
	http://code.google.com/p/pharo/issues/detail?id=6712
	
Issue 6708:	Remove BlockClosure>>once which is useless
	http://code.google.com/p/pharo/issues/detail?id=6708
	
Issue 6705:	update CI-Core
	http://code.google.com/p/pharo/issues/detail?id=6705'.
	self loadTogether: self script287 merge: false.
	self flushCaches.
