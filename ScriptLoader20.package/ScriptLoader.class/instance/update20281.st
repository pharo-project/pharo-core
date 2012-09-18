pharo - updates
update20281
	"self new update20281"
	self withUpdateLog: 'Issue 6654:	Make one RPackage maps one PackageInfo
	http://code.google.com/p/pharo/issues/detail?id=6654
	
(pass 3)

- Monticello to use RPackageSet'.
	self loadTogether: self script268 merge: false.
	PackageOrganizer default unregisterPackageNamed: 'RPackage'.
(RPackageOrganizer default packageNamed: 'RPackage') unregister.
.
	self flushCaches.
