pharo - updates
update20062
	"self new update20062"
	self withUpdateLog: 'Issue 5602:	Unicode Initialization lost
	http://code.google.com/p/pharo/issues/detail?id=5602
	
Issue 5851:	Drag and drop broken in Nautilus
	http://code.google.com/p/pharo/issues/detail?id=5851
	
Issue 5849:	remove empty packages Network-RemoteDirectory and ScriptLoader13
	http://code.google.com/p/pharo/issues/detail?id=5849
	
-> do a #cleanUpForRelease'.
	self loadTogether: self script52 merge: false.
	ScriptLoader new unloadPackageNamed: 'Network-RemoteDirectory'.
RPackageOrganizer default unregisterPackageNamed: 'Network-RemoteDirectory'.
RPackageOrganizer default unregisterPackageNamed:'ScriptLoader13'.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
