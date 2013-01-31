pharo - updates
update20369
	"self new update20369"
	self withUpdateLog: 'Issue 6886:	Fix Number: day, week, year, second, ... to return the same as plural
	http://code.google.com/p/pharo/issues/detail?id=6886
	
'.
	self loadTogether: self script351 merge: false.
	self flushCaches.
