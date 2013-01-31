pharo - updates
update20335
	"self new update20335"
	self withUpdateLog: 'Issue 6786:	TextEditor loses selection interval on right-click
	http://code.google.com/p/pharo/issues/detail?id=6786
	
Issue 6789:	Open MCRepository after adding it
	http://code.google.com/p/pharo/issues/detail?id=6789
	
Issue 6781:	Freetype startup + some cleanup
	http://code.google.com/p/pharo/issues/detail?id=6781'.
	self loadTogether: self script317 merge: false.
	FT2Handle initialize.
	self flushCaches.
