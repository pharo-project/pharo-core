pharo - updates
update20521
	"self new update20521"
	self withUpdateLog: 'Issue 7382:	TextModel>>setSelection: has no effect if called before openWithSpec
	http://code.google.com/p/pharo/issues/detail?id=7382
	
Issue 7389:	Behavior not taken into account in TextModel when sending openWithSpec
	http://code.google.com/p/pharo/issues/detail?id=7389
	
	
'.
	self loadTogether: self script498 merge: false.
	self flushCaches.
