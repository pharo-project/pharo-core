pharo - updates
update20208
	"self new update20208"
	self withUpdateLog: 'Issue 6279:	Browse comment versions in Nautilus crashes
	http://code.google.com/p/pharo/issues/detail?id=6279
	
Issue 6268:	CI-Core should be in the core image
	http://code.google.com/p/pharo/issues/detail?id=6268
	
Issue 5625:	DNU in FileList when clicking on empty space
	http://code.google.com/p/pharo/issues/detail?id=5625
	
Issue 5984:	Drag and Droping classes between groups create new package
	http://code.google.com/p/pharo/issues/detail?id=5984'.
	self loadTogether: self script198 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
