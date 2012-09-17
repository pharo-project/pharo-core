pharo - updates
update20276
	"self new update20276"
	self withUpdateLog: 'Issue 6560:	[Cleanup]: SystemVersion
	http://code.google.com/p/pharo/issues/detail?id=6560
	
 Issue 6576:	Some MC enh from Squeak
	http://code.google.com/p/pharo/issues/detail?id=6576
	
 Issue 6629:	Update FileSystem comments
	http://code.google.com/p/pharo/issues/detail?id=6629
	
Issue 6631:	Order of classes and traits in fileOut are wrong
	http://code.google.com/p/pharo/issues/detail?id=6631'.
	self loadTogether: self script263 merge: false.
	self flushCaches.
