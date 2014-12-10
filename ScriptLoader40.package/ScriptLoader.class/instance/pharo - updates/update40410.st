update40410
	"self new update40410"
	self withUpdateLog: '14598 Spotter version 1.0.1
	https://pharo.fogbugz.com/f/cases/14598

14597 GTools 2.0.5
	https://pharo.fogbugz.com/f/cases/14597'.
	self loadTogether: self script410 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.0.1'.
self loadConfiguration: 'GTPlaygroundCore' version: '2.0.5'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGlamour'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfInspector'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfPlayground'.
	self flushCaches.
