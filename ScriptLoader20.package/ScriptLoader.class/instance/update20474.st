pharo - updates
update20474
	"self new update20474"
	self withUpdateLog: 'Issue 7263:	clean spec from experimental packages
	http://code.google.com/p/pharo/issues/detail?id=7263&

Issue 7259:	Re-enable #signalProgress in MCHttpRepository>>#httpClient
	http://code.google.com/p/pharo/issues/detail?id=7259
	
Issue 7258:	Simplify HTTP client usage in Unicode-Initialization
	http://code.google.com/p/pharo/issues/detail?id=7258
	
Issue 7241:	Failing test: RBSmalllintTest>>testBadMessage
	Issue 7241:	Failing test: RBSmalllintTest>>testBadMessage

Issue 7047:	Source pane font permanently changes after switching to Group view and selecting one
	http://code.google.com/p/pharo/issues/detail?id=7047'.
	self loadTogether: self script452 merge: false.
	ScriptLoader new unloadPackage: 'Spec-Builder'.
.
	self flushCaches.
