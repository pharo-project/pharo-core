pharo - updates
update20252
	"self new update20252"
	self withUpdateLog: 'Issue 6570:	Pluggable list morph can lead to a mouseDownRow with index 0
	http://code.google.com/p/pharo/issues/detail?id=6570
	
Issue 6566:	joining dictionaries does not work properly
	http://code.google.com/p/pharo/issues/detail?id=6566
	
Issue 6563:	Cannot open a repository with subdirectories
	http://code.google.com/p/pharo/issues/detail?id=6563
	
Issue 6437:	Add missing methods to Timespan
	http://code.google.com/p/pharo/issues/detail?id=6437'.
	self loadTogether: self script239 merge: false.
	self flushCaches.
