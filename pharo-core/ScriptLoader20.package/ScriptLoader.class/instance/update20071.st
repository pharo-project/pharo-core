pharo - updates
update20071
	"self new update20071"
	self withUpdateLog: 'Issue 5866:	error in new CodeImporter
	http://code.google.com/p/pharo/issues/detail?id=5866
	
Issue 5835:	Improved version of StartupPreferences
	http://code.google.com/p/pharo/issues/detail?id=5835'.
	self loadTogether: self script61 merge: false.
	self flushCaches.
