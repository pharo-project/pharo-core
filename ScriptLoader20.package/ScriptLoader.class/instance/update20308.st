pharo - updates
update20308
	"self new update20308"
	self withUpdateLog: 'Issue 6739:	Remove URI client classes concept
	http://code.google.com/p/pharo/issues/detail?id=6739
	
Issue 6725:	Character Conversion Cleanup
	http://code.google.com/p/pharo/issues/detail?id=6725
	'.
	self loadTogether: self script295 merge: false.
	self flushCaches.
