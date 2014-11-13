update40364
	"self new update40364"
	self withUpdateLog: '14422 AnnouncementSpy is not needed anymore: GTInspector has all the functionality
	https://pharo.fogbugz.com/f/cases/14422

14448 remove empty packages
	https://pharo.fogbugz.com/f/cases
	
14449 DNU #theme in Appearance setting
	https://pharo.fogbugz.com/f/cases/14449'.
	self loadTogether: self script364 merge: false.
	ScriptLoader new deletePackage: 'DebuggerTests'.
ScriptLoader new deletePackage: 'EmbeddedFreeTypeTests'.
ScriptLoader new deletePackage: 'FontInfrastructureTests'.
ScriptLoader new deletePackage: 'NECompletionTests'.
ScriptLoader new deletePackage: 'NautilusTests'.
ScriptLoader new deletePackage: 'SlotTests'.
ScriptLoader new deletePackage: 'SmartSuggestionsTests'.
.
	self flushCaches.
self cleanRepositories.
