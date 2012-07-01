pharo - updates
update20092
	"self new update20092"
	self withUpdateLog: 'Issue 5755:	Failing Tests: RPackageMCSynchronisationTest
	http://code.google.com/p/pharo/issues/detail?id=5755
	
Issue 5957:	fast drag is broken	
	http://code.google.com/p/pharo/issues/detail?id=5957'.
	self loadTogether: self script81 merge: false.
	self flushCaches.
