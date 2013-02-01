pharo - updates
update20401
	"self new update20401"
	self withUpdateLog: 'Issue 6985:	SytemWindow unused iVar allowReframeHandles
	http://code.google.com/p/pharo/issues/detail?id=6985
	
Issue 6984:	DebuggerMethodMap should be defined by the Compiler...
	http://code.google.com/p/pharo/issues/detail?id=6984
	
Issue 6981:	move ThreadSafeTranscript Morphic dependent methods to Polymorph
	http://code.google.com/p/pharo/issues/detail?id=6981'.
	self loadTogether: self script380 merge: false.
	self flushCaches.
