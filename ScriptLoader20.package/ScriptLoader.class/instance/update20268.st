pharo - updates
update20268
	"self new update20268"
	(MCWorkingCopy allManagers detect: [ :m | m packageName = 'Monticellomocks' ]) unregister.
PackageOrganizer default unregisterPackage: (PackageInfo named: 'MonticelloMocks').
	self withUpdateLog: 'Issue 6599:	we have methods with trailer EmbeddedSourceZip
	http://code.google.com/p/pharo/issues/detail?id=6599
	
Issue 6597:	Fix MonticelloMocks mess
	http://code.google.com/p/pharo/issues/detail?id=6597'.
	self loadTogether: self script255 merge: false.
	RPackageOrganizer initialize.
MCSnapshotResource reset.
SystemAnnouncer restoreAllNotifications.
RecentMessageList uniqueInstance registerToAnnouncements.
	self flushCaches.
