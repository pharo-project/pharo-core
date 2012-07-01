pharo - updates
update20038
	"self new update20038"
	self withUpdateLog: 'Issue 5775:	add test to trait removal
	http://code.google.com/p/pharo/issues/detail?id=5775
	
Issue 5738:	do allow the same ivar in the hierarchy
	http://code.google.com/p/pharo/issues/detail?id=5738
	
Issue 5742:	BallonMorph shows flyover help using an extra line
	http://code.google.com/p/pharo/issues/detail?id=5742
	
Issue 5667:	Renaming a file just deletes it due to missing #fileNameFromFormattedItem:
	http://code.google.com/p/pharo/issues/detail?id=5667
	
Issue 5773:	Have access to the original event in PLuggableButtonMorph
	http://code.google.com/p/pharo/issues/detail?id=5773'.
	self loadTogether: self script32 merge: false.
	self flushCaches.
