pharo - updates
update20321
	"self new update20321"
	self withUpdateLog: 'Issue 6762:	RPackage breaks with class side trait methods
	http://code.google.com/p/pharo/issues/detail?id=6762
	
Issue 6758:	Nautilus History Shortcuts and BugFixes
	http://code.google.com/p/pharo/issues/detail?id=6758
	
Issue 6763:	Improvements to MorphTreeMorph
	http://code.google.com/p/pharo/issues/detail?id=6763'.
	self loadTogether: self script306 merge: false.
	self flushCaches.
