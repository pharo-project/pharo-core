pharo - updates
update20030
	"self new update20030"
	self withUpdateLog: 'Issue 5749:	Show categories in senders, implementors, etc.
	http://code.google.com/p/pharo/issues/detail?id=5749
	
Issue 5605:	DateAndTimeTest>>testPrintStringNoOffset fails on pharo-one-click
	http://code.google.com/p/pharo/issues/detail?id=5605
	
Issue 5722:	Be able to remove traits from class definition
	http://code.google.com/p/pharo/issues/detail?id=5722'.
	self loadTogether: self script24 merge: false.
	self flushCaches.
