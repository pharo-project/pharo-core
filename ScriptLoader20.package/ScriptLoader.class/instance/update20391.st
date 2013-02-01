pharo - updates
update20391
	"self new update20391"
	self withUpdateLog: 'Issue 6953:	remove MethodContext>>#cachedStackTop
	http://code.google.com/p/pharo/issues/detail?id=6953
	
Issue 6951:	RGContainer dependency on Monticello
	http://code.google.com/p/pharo/issues/detail?id=6951
	
Issue 6948:	HelpBrowser initialize opens the window
	http://code.google.com/p/pharo/issues/detail?id=6948'.
	self loadTogether: self script370 merge: false.
	self flushCaches.
