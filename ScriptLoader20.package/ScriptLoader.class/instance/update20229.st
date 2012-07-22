pharo - updates
update20229
	"self new update20229"
	self withUpdateLog: 'Issue 6429:	move methodReference to Ring
	http://code.google.com/p/pharo/issues/detail?id=6429
	
Issue 6428:	add save option to FuelCommandLineHandler
	http://code.google.com/p/pharo/issues/detail?id=6428'.
	self loadTogether: self script217 merge: false.
	self flushCaches.
