pharo - updates
update20076
	"self new update20076"
	ScriptLoader showIntegrationMenu.
World resetWorldMenu.
	self withUpdateLog: 'Issue 5669:	MC Speedup
	http://code.google.com/p/pharo/issues/detail?id=5669'.
	self loadTogether: self script65 merge: false.
	self flushCaches.
