pharo - updates
update20234
	"self new update20234"
	SystemAnnouncer announcer:  (SystemAnnouncer new 
		instVarNamed: 'registry' put: (SystemAnnouncer announcer instVarNamed: 'registry');
		yourself).
	SystemAnnouncer initialize.
.
	self withUpdateLog: 'Issue 6465:	Remove SystemChangeNotifier 1 - All events managed by SystemAnnouncer
	http://code.google.com/p/pharo/issues/detail?id=6465'.
	self loadTogether: self script221 merge: false.
	SystemAnnouncer uniqueInstance 
	noMoreNotificationsFor: Smalltalk;
	noMoreNotificationsFor: SmalltalkImage.
	SystemAnnouncer uniqueInstance
		unsubscribe: ChangesLog default;
		on: SystemAnnouncement send: #logAnnouncement: to: ChangesLog default.
.
	self flushCaches.
