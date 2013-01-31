pharo - updates
update20319
	"self new update20319"
	self withUpdateLog: 'Issue 6750:	New Zinc version: fixing startup behavior of ZnServer
	http://code.google.com/p/pharo/issues/detail?id=6750
	
Issue 6734:	Adding some morph navigation through keymappings
	http://code.google.com/p/pharo/issues/detail?id=6734'.
	self loadTogether: self script304 merge: false.
	self flushCaches.
