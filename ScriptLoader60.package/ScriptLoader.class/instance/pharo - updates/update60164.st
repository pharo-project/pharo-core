update60164
	"self new update60164"
	self withUpdateLog: '18854 Unload System-CommandLine-TextSupport
	https://pharo.fogbugz.com/f/cases/18854'.
	self loadTogether: self script60164 merge: false.
	
ScriptLoader new unloadPackage: 'System-CommandLine-TextSupport'.
	self flushCaches.
