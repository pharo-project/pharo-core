pharo - updates
update20290
	"self new update20290"
	self withUpdateLog: 'Issue 6620:	Fix testRemoveTaggedClasses bad reference
	http://code.google.com/p/pharo/issues/detail?id=6620'.
	self loadTogether: self script277 merge: false.
	ScriptLoader new unregisterPackage: 'Graphics'.
ScriptLoader new unregisterPackage: 'RPackage'.
ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
