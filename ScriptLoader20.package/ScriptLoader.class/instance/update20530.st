pharo - updates
update20530
	"self new update20530"
	self withUpdateLog: 'Issue 7461:	Failing Tests: ClassQueryTest>>#testReferencedClasses
	http://code.google.com/p/pharo/issues/detail?id=7461
	
Issue 7293:	[BUG]: Spotlight should handle packages
	http://code.google.com/p/pharo/issues/detail?id=7293
	
Issue 7090:	Should Float>>#printOn:base: use the slower exact printing?
	http://code.google.com/p/pharo/issues/detail?id=7090
	
Issue 7076:	Evaluating "[[ false ] whileFalse: [ ]]" produces SubscriptOutOfBounds
	http://code.google.com/p/pharo/issues/detail?id=7076'.
	self loadTogether: self script507 merge: false.
	self flushCaches.
