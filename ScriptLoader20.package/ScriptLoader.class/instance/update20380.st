pharo - updates
update20380
	"self new update20380"
	self withUpdateLog: 'Issue 6900:	The changeSorter does not listen and refresh to system events
	http://code.google.com/p/pharo/issues/detail?id=6900
	
Issue 2030:	Shadowed variables
	http://code.google.com/p/pharo/issues/detail?id=2030
	
Issue 3670:	Fixes for Latin1Environment from EToys
	http://code.google.com/p/pharo/issues/detail?id=3670'.
	self loadTogether: self script360 merge: false.
	self flushCaches.
