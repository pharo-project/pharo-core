pharo - updates
update20556
	"self new update20556"
	self withUpdateLog: 'Issue 7521:	Add PostMaterializationAction to Fueled out stack traces
	http://code.google.com/p/pharo/issues/detail?id=7521
	
Issue 7509:	intersect:ifNone: Error
	http://code.google.com/p/pharo/issues/detail?id=7509
	
Issue 7452:	After "ImageCleaner cleanUpForProduction" there are obsolete classes
	http://code.google.com/p/pharo/issues/detail?id=7452'.
	self loadTogether: self script531 merge: false.
	self flushCaches.
