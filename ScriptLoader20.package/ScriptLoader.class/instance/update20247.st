pharo - updates
update20247
	"self new update20247"
	RPackageOrganizer default
	unregisterPackageNamed: #FuelPackageLoader;
	unregisterPackageNamed: #'FuelPackageLoader-Mappers';
	unregisterPackageNamed: #FuelPackageLoaderTests;
	unregisterPackageNamed: #FuelFileSystem.
.
	self withUpdateLog: 'Issue 6493:	Integrate new version of Fuel and remove obsolete packages
	http://code.google.com/p/pharo/issues/detail?id=6493
	
Issue 6517:	recategorizing some methods in PollyMoprh
	http://code.google.com/p/pharo/issues/detail?id=6517
	
Issue 6519:	Merge NE and NO Completion
	http://code.google.com/p/pharo/issues/detail?id=6519
	
Issue 6534:	Morphic+Polymorph changes
	http://code.google.com/p/pharo/issues/detail?id=6534

Issue 6536:	add convenience BlockClosure>>#valueWithoutNotification
	http://code.google.com/p/pharo/issues/detail?id=6536
	
Issue 6537:	gofer tests is using #doSilently:
	http://code.google.com/p/pharo/issues/detail?id=6537'.
	self loadTogether: self script234 merge: false.
	self flushCaches.
