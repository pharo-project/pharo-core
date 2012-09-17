pharo - updates
update20279
	"self new update20279"
	self withUpdateLog: 'Issue 6654:	Make one RPackage maps one PackageInfo
	http://code.google.com/p/pharo/issues/detail?id=6654
	
(pass 1)

- Rollback Nautilus to a pre-tags version
- initialize RPackageOrganizer from PackageInfos as before'.
	self loadTogether: self script266 merge: false.
	RPackageOrganizer initializeDefault.
	self flushCaches.
