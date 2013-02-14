pharo - updates
update20544
	"self new update20544"
	self withUpdateLog: 'Issue 7291:	Monticello asks for credentials when none are required
	http://code.google.com/p/pharo/issues/detail?id=7291
	
Issue 7503:	MC Browser System Category Order Changes
	http://code.google.com/p/pharo/issues/detail?id=7503

Issue 7014:	downloadSources without Zinc
	http://code.google.com/p/pharo/issues/detail?id=7014'.
	self loadTogether: self script519 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
