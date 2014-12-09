update40407
	"self new update40407"
	self withUpdateLog: '14593 GTools version 2.0.4
	https://pharo.fogbugz.com/f/cases/14593'.
	self loadTogether: self script407 merge: false.
	self loadConfiguration: 'GTPlaygroundCore' version: '2.0.4'.
ScriptLoader new unloadPackageNamed: 'HashTable'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfHashTable'.
	self flushCaches.
