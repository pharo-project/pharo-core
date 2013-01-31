pharo - updates
update20332
	"self new update20332"
	self withUpdateLog: 'Issue 6780:	Nautilus Issue creation Menu is confusing
	http://code.google.com/p/pharo/issues/detail?id=6780
	
	
Issue 6779:	MCSmalltalkhubRepository sends wrong instance creation message
	http://code.google.com/p/pharo/issues/detail?id=6779'.
	self loadTogether: self script314 merge: false.
	self flushCaches.
