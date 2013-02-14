pharo - updates
update20545
	"self new update20545"
	self withUpdateLog: 'Issue 7467:	SystemReporter should not include SUnit Results
	http://code.google.com/p/pharo/issues/detail?id=7467
	
Issue 7495:	Failing test: FLCreateTraitSerializationTest>>#testCreateWithInstance
	http://code.google.com/p/pharo/issues/detail?id=7495
	
Issue 7498:	RPackage>>extensionMethodsForClass forget methods
	http://code.google.com/p/pharo/issues/detail?id=7498
	
Issue 7507:	location is undefined for a SmalltalkHub repository in MCHttpRepository>>password
	http://code.google.com/p/pharo/issues/detail?id=7507'.
	self loadTogether: self script520 merge: false.
	self flushCaches.
