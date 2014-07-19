update40101
	"self new update40101"
	self withUpdateLog: '13592 Small RB Tests cleanup
	https://pharo.fogbugz.com/f/cases/13592

13589 deprecated  TimeStamp
	https://pharo.fogbugz.com/f/cases/13589
	
13590 TimeStamp has still instances
	https://pharo.fogbugz.com/f/cases/13590
	
13591 unload tests Metacello-TestsTutorial
	https://pharo.fogbugz.com/f/cases/13591

'.
	self loadTogether: self script101 merge: false.
	TimeStamp allInstances do: [:each | each primitiveChangeClassTo: DateAndTime now ].
ScriptLoader new unloadPackageNamed: 'Metacello-TestsTutorial'.
	self flushCaches.
self cleanRepositories.
