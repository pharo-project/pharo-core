pharo - updates
update20392
	"self new update20392"
	self withUpdateLog: 'Issue 6959:	two release tests are dependent on RPackage
	http://code.google.com/p/pharo/issues/detail?id=6959
	
Issue 6954:	DummyUIManager and Interactive compiler requestor
	http://code.google.com/p/pharo/issues/detail?id=6954'.
	self loadTogether: self script371 merge: false.
	self flushCaches.
