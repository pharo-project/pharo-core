pharo - updates
update20236
	"self new update20236"
	SystemAnnouncer announcer: nil.
SystemAnnouncer privateAnnouncer: nil.
RPackageOrganizer registerInterestToSystemAnnouncement.
MCPackageManager registerForNotifications.
MCWorkingCopy registerForNotifications.
.
	self withUpdateLog: 'Issue 6467:	Remove SystemChangeNotifier 2 - All events using SystemAnnouncer
	http://code.google.com/p/pharo/issues/detail?id=6467
'.
	self loadTogether: self script223 merge: false.
	SystemAnnouncer restoreAllNotifications.
RPackage organizer: nil.
	self flushCaches.
