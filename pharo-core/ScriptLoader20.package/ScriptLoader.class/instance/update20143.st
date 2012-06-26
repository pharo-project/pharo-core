pharo - updates
update20143
	"self new update20143"
	self withUpdateLog: 'Issue 6095:	jenkins build failing because basicEntryAt: answers nil
	http://code.google.com/p/pharo/issues/detail?id=6095
	
 Issue 6094:	Configurations browser should be smarter
	http://code.google.com/p/pharo/issues/detail?id=6094'.
	self loadTogether: self script133 merge: false.
	self flushCaches.
