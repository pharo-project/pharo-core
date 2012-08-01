pharo - updates
update20134
	"self new update20134"
	PragmaCollector allInstances
	do: [ :i | (Smalltalk at: #SystemChangeNotifier) uniqueInstance noMoreNotificationsFor: i ].
	self withUpdateLog: '- Issue 5750:	RPackage should rename extension methods in pckage renames. Thanks Mariano Martinez-Peck and Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5750
	
-  Issue 6073:	Make PragmaCollector rely on SystemAnnouncer instead of SystemChangeNotifier. Thanks Mariano Martinez-Peck and Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=6073'.
	self loadTogether: self script124 merge: false.
	PragmaCollector allInstances
	do: [ :i | i installSystemNotifications ].
	self flushCaches.
