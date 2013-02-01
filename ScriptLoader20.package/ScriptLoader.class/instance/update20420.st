pharo - updates
update20420
	"self new update20420"
	self withUpdateLog: 'Issue 7055:	Removing the last direct references to Debugger
	http://code.google.com/p/pharo/issues/detail?id=7055
	
Issue 7058:	bug on compilation
	http://code.google.com/p/pharo/issues/detail?id=7058
	
Issue 7045:	SystemNavigation>>#allUnimplementedNonPrimitiveCalls calls isFalse:
	http://code.google.com/p/pharo/issues/detail?id=7045
	
Issue 7053:	improve AbsolutePath tests
	http://code.google.com/p/pharo/issues/detail?id=7053'.
	self loadTogether: self script399 merge: false.
	self flushCaches.
