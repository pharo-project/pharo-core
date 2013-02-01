pharo - updates
update20413
	"self new update20413"
	self withUpdateLog: 'Issue 7013:	RBMethodNode should store class
	http://code.google.com/p/pharo/issues/detail?id=7013
	
Issue 7011:	FixUnderscores not needed in base system
	http://code.google.com/p/pharo/issues/detail?id=7011
	
Issue 7012:	Morphic code in UIManager>>#request:regex:
	http://code.google.com/p/pharo/issues/detail?id=7012'.
	self loadTogether: self script392 merge: false.
	ScriptLoader new unloadPackage: 'FixUnderscores'.
	self flushCaches.
