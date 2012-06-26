pharo - updates
update20013
	"self new update20013"
	self withUpdateLog: 'Issue 5700:	Failing test: MethodReferenceTest
	http://code.google.com/p/pharo/issues/detail?id=5700
	
Issue 5687:	remove and clean up CompiledMethod>>#hasNewPropertyFormat
	http://code.google.com/p/pharo/issues/detail?id=5687'.
	self loadTogether: self script7 merge: false.
	self flushCaches.
