pharo - updates
update20194
	"self new update20194"
	self withUpdateLog: 'Issue 6304:	[BUG]: Completion DNU in Inspector/Object Explorer for 2.0
	http://code.google.com/p/pharo/issues/detail?id=6304
	
Issue 6301:	Halts in image
	http://code.google.com/p/pharo/issues/detail?id=6301
	
Issue 6274:	another step to remove StringHolder hierarchy element
	http://code.google.com/p/pharo/issues/detail?id=6274'.
	self loadTogether: self script184 merge: false.
	self flushCaches.
