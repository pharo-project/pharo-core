pharo - updates
update20317
	"self new update20317"
	self withUpdateLog: 'Issue 6167:	ClassFactoryForTestCase has silent extensions from fuel
	http://code.google.com/p/pharo/issues/detail?id=6167
	
Issue 6392:	DNU for Text initialize
	http://code.google.com/p/pharo/issues/detail?id=6392
	
Issue 6277:	PharoV10.sources files should be loaded on demand
	http://code.google.com/p/pharo/issues/detail?id=6277'.
	self loadTogether: self script302 merge: false.
	self flushCaches.
