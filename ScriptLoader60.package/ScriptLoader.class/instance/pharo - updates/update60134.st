update60134
	"self new update60134"
	self withUpdateLog: '18636 FFICallback is broken since Alien was updated to support ARM and 64bits
	https://pharo.fogbugz.com/f/cases/18636

18223 GTInspector compose should use HelpBrowser openOn GTInspectorHelp
	https://pharo.fogbugz.com/f/cases/18223

18681 Cleanup Compiled Method Trailers
	https://pharo.fogbugz.com/f/cases/18681'.
	self loadTogether: self script60134 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.22'.
Callback startUp: true.
FFIMethodRegistry uniqueInstance reset.
	self flushCaches.
