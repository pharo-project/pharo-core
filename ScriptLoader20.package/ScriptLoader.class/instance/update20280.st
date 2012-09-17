pharo - updates
update20280
	"self new update20280"
	self withUpdateLog: 'Issue 6654:	Make one RPackage maps one PackageInfo
	http://code.google.com/p/pharo/issues/detail?id=6654
	
(pass 2)

- introduce RPackageSet
- test RPackageSet is polymorphic with PackageInfo in MC context 
'.
	self loadTogether: self script267 merge: false.
	RPackageOrganizer initialize.
SystemAnnouncer restoreAllNotifications.
.
	self flushCaches.
