pharo - updates
update20453
	"self new update20453"
	self withUpdateLog: 'Issue 7165:	CleanUp MethodChangeRecord (preparation)
	http://code.google.com/p/pharo/issues/detail?id=7165
	
Issue 7018:	move unicode initialization methods to the separate package
	http://code.google.com/p/pharo/issues/detail?id=7018'.
	self loadTogether: self script432 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
.
	self flushCaches.
