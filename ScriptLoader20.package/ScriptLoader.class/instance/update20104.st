pharo - updates
update20104
	"self new update20104"
	self withUpdateLog: ' Issue 6010:	Fixing RPackageMCSynchronisationTests
		http://code.google.com/p/pharo/issues/detail?id=6010
		Thanks Guillermo Polito to happily hacking with Stephane. This is funnier when we are two. Pair fixing is cool.'.
	self loadTogether: self script94 merge: false.
	self flushCaches.
