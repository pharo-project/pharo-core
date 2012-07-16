pharo - updates
update20205
	"self new update20205"
	self withUpdateLog: 'Issue 6349:	unload Package TrueType
	http://code.google.com/p/pharo/issues/detail?id=6349
	
Issue 6345:	failing test Tests.Release.ReleaseTest.testUndeclared
	http://code.google.com/p/pharo/issues/detail?id=6345
	
Issue 6342:	doesNotUnderstand: Finder UI>>guessTypeByName:
	http://code.google.com/p/pharo/issues/detail?id=6342'.
	self loadTogether: self script195 merge: false.
	ScriptLoader new unloadPackageNamed:  'TrueType'.
	self flushCaches.
