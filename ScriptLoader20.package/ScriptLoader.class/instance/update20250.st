pharo - updates
update20250
	"self new update20250"
	self withUpdateLog: 'Issue 6503:	ScriptLoader deletePackage: does not say what it says
	http://code.google.com/p/pharo/issues/detail?id=6503
	
Issue 6542:	unload package Polymorph
	http://code.google.com/p/pharo/issues/detail?id=6542
	
Issue 6544:	[ENH]: SystemPreferences - Notify Errors
	http://code.google.com/p/pharo/issues/detail?id=6544
	
Issue 6545:	There are no accesses to commandLine in CommandLineHandlerTest
	http://code.google.com/p/pharo/issues/detail?id=6545'.
	self loadTogether: self script237 merge: false.
	(MCWorkingCopy allManagers
	detect: [ :each | each packageName = 'Polymorph' ]
	ifNone: [ nil ])
	ifNotNil: [ :wc | wc unregister ].
	self flushCaches.
