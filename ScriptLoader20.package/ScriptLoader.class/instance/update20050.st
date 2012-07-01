pharo - updates
update20050
	"self new update20050"
	self withUpdateLog: 'Issue 5813:	remove empty packages
	http://code.google.com/p/pharo/issues/detail?id=5813
	
Issue 5811:	Put comment in #methodsWithUnboundGlobals
	http://code.google.com/p/pharo/issues/detail?id=5811

Issue 5807:	basic fixes for Pharo Kernel 2.0
	http://code.google.com/p/pharo/issues/detail?id=5807
	
Issue 5805:	Failing Test FailingTestResourceTestCase>>#testRunSuiteWithResource
	http://code.google.com/p/pharo/issues/detail?id=5805
	
Issue 5799:	run once in startUp preferences is broken
	http://code.google.com/p/pharo/issues/detail?id=5799
	
Issue 5800:	stdin hangs until EOF
	http://code.google.com/p/pharo/issues/detail?id=5800
	
Issue 5493:	FileDirectory >> statsForDirectoryTree: depends on Cursor
	http://code.google.com/p/pharo/issues/detail?id=5493
	
Issue 5783:	MenuRegistrationExample class>>toolsOn: causes DNU
	http://code.google.com/p/pharo/issues/detail?id=5783'.
	self loadTogether: self script42 merge: false.
	ScriptLoader new unloadPackageNamed: 'System-BreakPoints'.
ScriptLoader new unloadPackageNamed:  'System-Debugging'.
RPackageOrganizer default unregisterPackageNamed:   'System-Debugging'.
RPackageOrganizer default unregisterPackageNamed:    'System-BreakPoints'.
RPackageOrganizer default unregisterPackageNamed:    'ScriptLoader14'.
RPackageOrganizer default unregisterPackageNamed:    'Deprecated14'.
	self flushCaches.
