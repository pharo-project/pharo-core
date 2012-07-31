pharo - updates
update20200
	"self new update20200"
	self withUpdateLog: 'Issue 6323:	Make Growl look nicer
	http://code.google.com/p/pharo/issues/detail?id=6323
	
Issue 6326:	RPackage testInvariant failing
	http://code.google.com/p/pharo/issues/detail?id=6326
	
Issue 6322:	Failing test FileSystem.Tests.Memory.MemoryFileSystemTest.testEntryAt
	http://code.google.com/p/pharo/issues/detail?id=6322'.
	self loadTogether: self script190 merge: false.
	RPackageOrganizer unregisterInterestToSystemAnnouncement.
RPackageOrganizer registerInterestToSystemAnnouncement.

(Smalltalk at: #RMockSystemAnnouncer) reset.

Smalltalk garbageCollect.
Smalltalk garbageCollect.
Smalltalk garbageCollect.

MCWorkingCopy announcer: nil.
RPackageOrganizer default registerInterestToAnnouncer: MCWorkingCopy announcer.
	self flushCaches.
