pharo - updates
update20326
	"self new update20326"
	self withUpdateLog: 'Issue 6772:	Incorrect MorphTreeNodeMorph>>selectionFrame
	http://code.google.com/p/pharo/issues/detail?id=6772
	
Issue 6754:	Nautilus Browser Restricted Package by Regex
	http://code.google.com/p/pharo/issues/detail?id=6754'.
	self loadTogether: self script311 merge: false.
	self flushCaches.
