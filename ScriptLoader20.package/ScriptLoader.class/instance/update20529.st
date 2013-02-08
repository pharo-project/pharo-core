pharo - updates
update20529
	"self new update20529"
	self withUpdateLog: 'Issue 7269:	Code Critic automatically adds class without permission
	http://code.google.com/p/pharo/issues/detail?id=7269
	
Issue 7238:	LazyListMorph>>selectionFrameForRow: fails with a should not happen from Rectangle>>intersect:ifNone:
	http://code.google.com/p/pharo/issues/detail?id=7238
	
Issue 6917:	save as... to an already existing image throws a DNU
	http://code.google.com/p/pharo/issues/detail?id=6917'.
	self loadTogether: self script506 merge: false.
	self flushCaches.
