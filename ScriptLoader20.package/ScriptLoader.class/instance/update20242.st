pharo - updates
update20242
	"self new update20242"
	RPackageOrganizer initialize. 

(MCPackage named: 'FuelPackageLoaderTests') workingCopy unload.	
(MCPackage named: 'FuelPackageLoader') workingCopy unload.
	self withUpdateLog: 'Issue 6493:	Integrate new version of Fuel and remove obsolete packages
	http://code.google.com/p/pharo/issues/detail?id=6493
	
Issue 6497:	new ReleaseTest >> testUnpackagedClasses
	http://code.google.com/p/pharo/issues/detail?id=6497
	
Issue 6502:	FS (FileSystem) and freetype on windows
	http://code.google.com/p/pharo/issues/detail?id=6502
	
Issue 6506:	add FileReference>>#isSymlink
	http://code.google.com/p/pharo/issues/detail?id=6506
	
Issue 6507:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6507'.
	self loadTogether: self script229 merge: false.
	self flushCaches.
