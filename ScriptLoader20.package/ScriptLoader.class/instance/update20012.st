pharo - updates
update20012
	"self new update20012"
	ScriptLoader new addHomeRepositoryToAllPackages.
ScriptLoader showIntegrationMenu.
	self withUpdateLog: 'Issue 5686:	Add some primitive testing methods to CompiledMethod
	http://code.google.com/p/pharo/issues/detail?id=5686
	
Issue 5692:	extract startup and shutdown from snapshot:andQuit:
	http://code.google.com/p/pharo/issues/detail?id=5692
	
Issue 5688:	remove #isClosureCompiled
	http://code.google.com/p/pharo/issues/detail?id=5688
	
Issue 5682:	metacelloPlatformAttributes should be updated.
	http://code.google.com/p/pharo/issues/detail?id=5682
	
Issue 5674:	remove more deprecated method
	http://code.google.com/p/pharo/issues/detail?id=5674
	
Issue 5639:	[EventModel] Remove more direct usage of Sensor
	http://code.google.com/p/pharo/issues/detail?id=5639'.
	self loadTogether: self script6 merge: false.
	self flushCaches.
