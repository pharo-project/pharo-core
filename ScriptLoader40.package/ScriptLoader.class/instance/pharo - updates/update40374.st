update40374
	"self new update40374"
	self withUpdateLog: '14385 move growl settings to Growl class
	https://pharo.fogbugz.com/f/cases/14385

14484 Remove debugging methods from Integer
	https://pharo.fogbugz.com/f/cases/14484

13982 Failing test: ReleaseTest>>testMethodsWithUnboundGlobals
	https://pharo.fogbugz.com/f/cases/13982'.
	self loadTogether: self script374 merge: false.
	
ScriptLoader new deletePackage: 'Announcements-View'.
	self flushCaches.
