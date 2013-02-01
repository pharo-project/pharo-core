pharo - updates
update20372
	"self new update20372"
	self withUpdateLog: 'Issue 6891:	MetacelloToolbox missing
	http://code.google.com/p/pharo/issues/detail?id=6891'.
	self loadTogether: self script354 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
