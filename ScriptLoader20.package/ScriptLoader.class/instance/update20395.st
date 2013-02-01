pharo - updates
update20395
	"self new update20395"
	self withUpdateLog: 'Issue 6965:	cleanup #generate:using:
	http://code.google.com/p/pharo/issues/detail?id=6965
	
Issue 6561:	Refactoring -> create superclass does not work
	http://code.google.com/p/pharo/issues/detail?id=6561
	
Issue 6943:	move ConfigurationCommandLineHandler to separate package
	http://code.google.com/p/pharo/issues/detail?id=6943'.
	self loadTogether: self script374 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
