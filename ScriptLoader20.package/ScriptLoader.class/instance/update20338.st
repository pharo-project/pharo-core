pharo - updates
update20338
	"self new update20338"
	self withUpdateLog: 'Issue 6800:	remove old ChangeSorter form menu
	http://code.google.com/p/pharo/issues/detail?id=6800
	
Issue 6799:	remvove all references to ChangeSetBrowser outside of ChangeSorter
	http://code.google.com/p/pharo/issues/detail?id=6799
	
Issue 6795:	Tango ST80 Syntax Coloring Scheme
	http://code.google.com/p/pharo/issues/detail?id=6795'.
	self loadTogether: self script320 merge: false.
	self flushCaches.
