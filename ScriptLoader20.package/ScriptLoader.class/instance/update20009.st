pharo - updates
update20009
	"self new update20009"
	self withUpdateLog: 'Issue 5564:	Support bit operations on Boolean / Integers
	http://code.google.com/p/pharo/issues/detail?id=5564
	
Issue 5641:	Unload Deprecated14
	http://code.google.com/p/pharo/issues/detail?id=5641'.
	self loadTogether: self script3 merge: false.
	ScriptLoader new unloadPackageNamed: 'Deprecated14'.
	self flushCaches.
