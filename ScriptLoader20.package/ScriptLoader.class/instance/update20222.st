pharo - updates
update20222
	"self new update20222"
	self withUpdateLog: 'Issue 6347:	Test failing: DiskFileSystemTest.testEntryAt
	http://code.google.com/p/pharo/issues/detail?id=6347

Issue 6404:	Fuel Tests fail due to DateAndTime changes
	http://code.google.com/p/pharo/issues/detail?id=6404
	
Issue 6402:	update kernelPackageNames
	http://code.google.com/p/pharo/issues/detail?id=6402'.
	self loadTogether: self script210 merge: false.
	self flushCaches.
