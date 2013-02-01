pharo - updates
update20407
	"self new update20407"
	self withUpdateLog: 'Issue 6998:	remove possilbe defaultCanvasClass recursion
	http://code.google.com/p/pharo/issues/detail?id=6998
	
Issue 6997:	Cleanup some unuses SystemNavigation methods...
	http://code.google.com/p/pharo/issues/detail?id=6997
	
Issue 6946:	RBParser does not support Pragmas after the temporary declaration
	http://code.google.com/p/pharo/issues/detail?id=6946
	
Issue 6945:	Specialize RBParser to directly generate RBTermporaryNode and RBArgumentNode
	http://code.google.com/p/pharo/issues/detail?id=694'.
	self loadTogether: self script386 merge: false.
	self flushCaches.
