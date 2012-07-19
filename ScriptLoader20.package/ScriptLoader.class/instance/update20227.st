pharo - updates
update20227
	"self new update20227"
	self withUpdateLog: 'Issue 6421:	Implementors of fails with DNU FrameLayoutSpec #fractions:offset:
	http://code.google.com/p/pharo/issues/detail?id=6421
	
Issue 5437:	Remove HostWindows
	http://code.google.com/p/pharo/issues/detail?id=5437
	
Issue 6413:	SystemWindows menu shows make draggable even if the window is already draggable.
	http://code.google.com/p/pharo/issues/detail?id=6413'.
	self loadTogether: self script215 merge: false.
	SpecBinder initializeBindings.
Smalltalk removeFromStartUpList: HostWindowProxy.
ScriptLoader new unloadPackageNamed: 'Graphics-External'.
	self flushCaches.
