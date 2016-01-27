update50550
	"self new update50550"
	self withUpdateLog: '17482 load UnifiedFFI 0.11.2
	https://pharo.fogbugz.com/f/cases/17482

17479 Interval class comment mixes step/stop when explaining Instance Variables
	https://pharo.fogbugz.com/f/cases/17479'.
	self loadTogether: self script50550 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.11.2'.
ScriptLoader new 
	unloadPackageNamed: 'ConfigurationOfOldAlien';
	unloadPackageNamed: 'ConfigurationOfFFI'.
	self flushCaches.
