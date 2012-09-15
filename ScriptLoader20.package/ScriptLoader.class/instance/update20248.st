pharo - updates
update20248
	"self new update20248"
	(MCPackage named: 'FuelFileSystemTests') workingCopy unload. 
RPackageOrganizer default 
	unregisterPackageNamed: #'FuelFileSystemTests'.
.
	self withUpdateLog: 'Issue 6441:	Several CompiledMethod fixes from Squeak
	http://code.google.com/p/pharo/issues/detail?id=6441
	
Issue 6444:	Improve NonInteractiveUIManager>>nonInteractive:
	http://code.google.com/p/pharo/issues/detail?id=6444
	
Issue 6486:	Fix Slider missing method
	http://code.google.com/p/pharo/issues/detail?id=6486
	
Issue 6488:	Fix SplitterMorph
	http://code.google.com/p/pharo/issues/detail?id=6488
	
Issue 6543:	GeneralScrollPane>>#newScroller is wrongly assigning red color
	http://code.google.com/p/pharo/issues/detail?id=6543'.
	self loadTogether: self script235 merge: false.
	(MCPackage named: 'Polymorph') workingCopy unregister.
	self flushCaches.
