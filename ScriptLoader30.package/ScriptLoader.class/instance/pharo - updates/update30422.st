update30422
	"self new update30422"
	self withUpdateLog: '11671 remove empty packages
	https://pharo.fogbugz.com/f/cases/11671
	
11672 tiny code critic cleanup in Network, Graphics and Tools
	https://pharo.fogbugz.com/f/cases/11672
	
11669 Move classes in System-Applications to Deprecated30
	https://pharo.fogbugz.com/f/cases/11669
'.
	self loadTogether: self script101 merge: false.
	ScriptLoader new unloadPackage:  'Compatibility'.
ScriptLoader new unloadPackage:  'Continuations'.
ScriptLoader new unloadPackage:  'FileSystem-AnsiStreams'.
ScriptLoader new unloadPackage:  'FileSystem-Tests-AnsiStreams'.
ScriptLoader new unloadPackage:  'SystemProgress'.
ScriptLoader new unloadPackage:  'System-Applications'.
.
	self flushCaches.
