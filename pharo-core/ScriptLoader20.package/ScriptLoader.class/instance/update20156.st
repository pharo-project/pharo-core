pharo - updates
update20156
	"self new update20156"
	self withUpdateLog: '- Issue 6131:	Code Completion on TextModel. Thanks Benjamin van Ryseghem. 
	http://code.google.com/p/pharo/issues/detail?id=6131
	
- Issue 6127:	Switching a pharo theme gives a MNU FileReference>>self. Thanks Tortsen B.
	http://code.google.com/p/pharo/issues/detail?id=6127'.
	self loadTogether: self script146 merge: false.
	self flushCaches.
