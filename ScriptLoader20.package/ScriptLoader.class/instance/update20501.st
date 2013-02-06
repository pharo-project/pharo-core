pharo - updates
update20501
	"self new update20501"
	self withUpdateLog: 'Issue 7343:	Monkey should *not* set FailingTest
	http://code.google.com/p/pharo/issues/detail?id=7343
	
Issue 7333:	CommandLineUImanager missing methods (was define behavior ie, writing on stdout)
	http://code.google.com/p/pharo/issues/detail?id=7333
	
Issue 5878:	Monticello history search
	http://code.google.com/p/pharo/issues/detail?id=5878
	
Issue 3435:	Do not draw transparent fillStyles
	http://code.google.com/p/pharo/issues/detail?id=3435'.
	self loadTogether: self script479 merge: false.
	self flushCaches.
