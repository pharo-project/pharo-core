pharo - updates
update20425
	"self new update20425"
	self withUpdateLog: 'Issue 7089:	Intermediate Fix to avoid OutOfBounds in ProgressMorphs
	http://code.google.com/p/pharo/issues/detail?id=7089
	
Issue 7087:	remove unused TestRunnerBrowser
	http://code.google.com/p/pharo/issues/detail?id=7087
	
	'.
	self loadTogether: self script404 merge: false.
	self flushCaches.
