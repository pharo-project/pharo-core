pharo - updates
update20098
	"self new update20098"
	self withUpdateLog: 'Issue 5982:	integrate Fuel 1.8
	http://code.google.com/p/pharo/issues/detail?id=5982'.
	self loadTogether: self script87 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
