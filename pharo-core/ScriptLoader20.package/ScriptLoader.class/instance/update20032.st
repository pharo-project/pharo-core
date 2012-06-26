pharo - updates
update20032
	"self new update20032"
	self withUpdateLog: 'Issue 5722:	Be able to remove traits from class definition
		http://code.google.com/p/pharo/issues/detail?id=5722'.
	self loadTogether: self script26 merge: false.
	self flushCaches.
