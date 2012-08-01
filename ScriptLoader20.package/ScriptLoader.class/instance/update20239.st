pharo - updates
update20239
	"self new update20239"
	SystemAnnouncer unsubscribe: ChangesLog default.
SystemChangeNotifier allInstances first releaseAll.
	self withUpdateLog: 'Issue 6477:	Remove SystemChangeNotifier 3 - Cleaning step 1
	http://code.google.com/p/pharo/issues/detail?id=6477
	
Issue 6484:	Static subscriptions to SystemAnnouncer done via pragmas
	http://code.google.com/p/pharo/issues/detail?id=6484
	
Issue 6495:	Settings Exporter
	http://code.google.com/p/pharo/issues/detail?id=6495
	
...and a bit of issue 6493, but still not completed. '.
	self loadTogether: self script226 merge: false.
	ChangesLog reset.
ChangesLog default.
	self flushCaches.
