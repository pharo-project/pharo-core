pharo - updates
update20191
	"self new update20191"
	self withUpdateLog: 'Issue 6249:	spotlight enhancements
	http://code.google.com/p/pharo/issues/detail?id=6249
	
Issue 5861:	group window should close docked windows
	http://code.google.com/p/pharo/issues/detail?id=5861
	
Issue 6281:	Nautilus: inconsistent menu labeling
	http://code.google.com/p/pharo/issues/detail?id=6281'.
	self loadTogether: self script181 merge: false.
	self flushCaches.
