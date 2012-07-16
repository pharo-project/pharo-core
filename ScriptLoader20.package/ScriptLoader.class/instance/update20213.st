pharo - updates
update20213
	"self new update20213"
	self withUpdateLog: 'Issue 6376:	New ProcessSpecificVariables & Running Processes 
	(first workaroung)
	http://code.google.com/p/pharo/issues/detail?id=6376
	
	'.
	self loadTogether: self script203 merge: false.
	self flushCaches.
