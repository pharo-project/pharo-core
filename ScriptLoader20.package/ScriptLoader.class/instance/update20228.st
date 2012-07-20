pharo - updates
update20228
	"self new update20228"
	self withUpdateLog: 'Issue 3360:	TextConverter handling of binary streams is wrong
	http://code.google.com/p/pharo/issues/detail?id=3360
	
Issue 6411:	MNU: Nautilus class>>newOnClass:selector:
	http://code.google.com/p/pharo/issues/detail?id=6411
	
Issue 6427:	use exitFailure in Pharo Kernel
	http://code.google.com/p/pharo/issues/detail?id=6427
	
Issue 6426:	Undeclared in ScriptLoader
	http://code.google.com/p/pharo/issues/detail?id=6426'.
	self loadTogether: self script216 merge: false.
	self flushCaches.
