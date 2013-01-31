pharo - updates
update20349
	"self new update20349"
	self withUpdateLog: 'Issue 6835:	Integrate HDTestRunner
	http://code.google.com/p/pharo/issues/detail?id=6835
	
Postscript:	
	
ScriptLoader new addHomeRepositoryToAllPackages.'.
	self loadTogether: self script331 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
