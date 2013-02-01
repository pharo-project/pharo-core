pharo - updates
update20394
	"self new update20394"
	self withUpdateLog: 'Issue 6963:	cleanup WeakActionSequenceTrappingErrors
	http://code.google.com/p/pharo/issues/detail?id=6963
	
Issue 6875:	Deprecate ProgressInitiationException
	http://code.google.com/p/pharo/issues/detail?id=6875
	
Issue 6961:	moved some methods from polymorph into the extended classes
	http://code.google.com/p/pharo/issues/detail?id=6961'.
	self loadTogether: self script373 merge: false.
	self flushCaches.
