pharo - updates
update20203
	"self new update20203"
	RPackageOrganizer registerInterestToSystemAnnouncement.
.
	self withUpdateLog: 'Issue 6336:	deleting a method raises error No package found for selector XXX in class YYY
	http://code.google.com/p/pharo/issues/detail?id=6336

Issue 6339:	fix undeclared ref
	http://code.google.com/p/pharo/issues/detail?id=6339'.
	self loadTogether: self script193 merge: false.
	self flushCaches.
