pharo - updates
update20374
	"self new update20374"
	self withUpdateLog: 'Issue 6902:	Autocompletion windows doesnt disappear
	http://code.google.com/p/pharo/issues/detail?id=6902
	
Issue 5077:	UI simulation from BDDExtensions project
	http://code.google.com/p/pharo/issues/detail?id=5077'.
	self loadTogether: self script356 merge: false.
	self flushCaches.
