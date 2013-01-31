pharo - updates
update20333
	"self new update20333"
	self withUpdateLog: 'Issue 6784:	Finder Cleanup
	http://code.google.com/p/pharo/issues/detail?id=6784
	
Issue 6783:	TextEditorDialog + Theme improvements
	http://code.google.com/p/pharo/issues/detail?id=6783
	
Issue 6782:	Gofer Metacello Extension: initialization and load fixes
	http://code.google.com/p/pharo/issues/detail?id=6782'.
	self loadTogether: self script315 merge: false.
	self flushCaches.
