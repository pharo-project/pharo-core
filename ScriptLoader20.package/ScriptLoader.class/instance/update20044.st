pharo - updates
update20044
	"self new update20044"
	self withUpdateLog: 'Issue 5785:	Nautilus: - Fix BreadCrumb plugin - Add Guillermos plugin - Fix Package Removal
	http://code.google.com/p/pharo/issues/detail?id=5785
	
Issue 5784:	Clean FSReference from comments
	http://code.google.com/p/pharo/issues/detail?id=5784
	
Issue 5792:	Fix tempNamed and tempNamedPut
	http://code.google.com/p/pharo/issues/detail?id=5792
	
Issue 5788:	methodsWithUnboundGlobals should search by identity
	http://code.google.com/p/pharo/issues/detail?id=5788
	
Issue 5794:	Move DebuggerMethodMap to Kernel
	http://code.google.com/p/pharo/issues/detail?id=5794'.
	self loadTogether: self script36 merge: false.
	self flushCaches.
