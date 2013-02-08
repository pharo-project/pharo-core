pharo - updates
update20525
	"self new update20525"
	self withUpdateLog: 'Issue 7447:	optional UsersManager
	http://code.google.com/p/pharo/issues/detail?id=7447
	
Issue 7444:	Morphic Settings appears twice, as its own group and as subgroup to Appearance
	http://code.google.com/p/pharo/issues/detail?id=7444'.
	self loadTogether: self script502 merge: false.
	self flushCaches.
