pharo - updates
update20406
	"self new update20406"
	self withUpdateLog: 'Issue 6995:	remove TextStyle class>>#initDefaultFontsAndStyle
	http://code.google.com/p/pharo/issues/detail?id=6995
	
Issue 6482:	switch to fullscreen is dependent on Morphic
	http://code.google.com/p/pharo/issues/detail?id=6482'.
	self loadTogether: self script385 merge: false.
	self flushCaches.
