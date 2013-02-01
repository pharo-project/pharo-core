pharo - updates
update20404
	"self new update20404"
	self withUpdateLog: 'Issue 6994:	move DisplayScreen >> #defaultCanvasClass to Morphic
	http://code.google.com/p/pharo/issues/detail?id=6994
	
Issue 6993:	update Pharo Kernel generation
	http://code.google.com/p/pharo/issues/detail?id=6993
	
Issue 6991:	Move #cleanUpForProduction to its own class
	http://code.google.com/p/pharo/issues/detail?id=6991'.
	self loadTogether: self script383 merge: false.
	self flushCaches.
