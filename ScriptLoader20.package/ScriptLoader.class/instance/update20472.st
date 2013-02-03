pharo - updates
update20472
	"self new update20472"
	self withUpdateLog: 'Issue 7255:	NetNameResolver NameLookupFailure interaction if wrong
	http://code.google.com/p/pharo/issues/detail?id=7255
	
Issue 7242:	failing test: BehaviorTest.testHasAbstractMethods
	http://code.google.com/p/pharo/issues/detail?id=7242'.
	self loadTogether: self script450 merge: false.
	NetNameResolver initialize.
	self flushCaches.
