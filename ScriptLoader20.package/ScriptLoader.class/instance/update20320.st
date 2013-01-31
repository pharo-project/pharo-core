pharo - updates
update20320
	"self new update20320"
	self withUpdateLog: 'Issue 6757:	Nuke HTTPClient and HTTPSocket and deprecated ZnHTTPSocketFacade
	http://code.google.com/p/pharo/issues/detail?id=6757
	
	
Remove HTTPClient completely.

Remove all methods from HTTPSocket, instance and class side, as well as all instance and class variables. Keep the methods on the class side delegating to ZnHTTPSocketFacade as they constitute a working API that might be used by legacy code.

Deprecate all class side methods on HTTPSocket that were delegating to ZnHTTPSocketFacade, as defined by the special Zinc-Patch-HTTPSocket package.

Remove HTTPSocketTests'.
	self loadTogether: self script305 merge: false.
	self flushCaches.
