pharo - updates
update20520
	"self new update20520"
	self withUpdateLog: 'Issue 7104:	ImageCleaner>>#cleanUpForProduction broken (part 1)
	http://code.google.com/p/pharo/issues/detail?id=7104
	
Issue 7443:	Setting compatible setter/getter to set image wide compiler
	http://code.google.com/p/pharo/issues/detail?id=7443
	
Issue 7442:	In Settings, Morphic should be capitalized
	http://code.google.com/p/pharo/issues/detail?id=7442&
	
'.
	self loadTogether: self script497 merge: false.
	self flushCaches.
