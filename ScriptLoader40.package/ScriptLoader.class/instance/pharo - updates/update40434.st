update40434
	"self new update40434"
	self withUpdateLog: '14684 Spotter version 1.0.5
	https://pharo.fogbugz.com/f/cases/14684

14683 GTools version 2.0.7
	https://pharo.fogbugz.com/f/cases/14683'.
	self loadTogether: self script434 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.0.5'.
self loadConfiguration: 'GTPlaygroundCore' version: '2.0.7'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGTPlayground'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGTInspector'.
	self flushCaches.
