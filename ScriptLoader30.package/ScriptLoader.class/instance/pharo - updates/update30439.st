update30439
	"self new update30439"
	self withUpdateLog: '11748 ConfigurationCommandLineHandler should allow multiple groups
	https://pharo.fogbugz.com/f/cases/11748
	
11747 Delete working copy of RB-Pharo-Platform
	https://pharo.fogbugz.com/f/cases/11747
	
11744 some themes are abstract
	https://pharo.fogbugz.com/f/cases/11744'.
	self loadTogether: self script118 merge: false.
	ScriptLoader new deletePackage: 'Refactoring-Pharo-Platform'.
.
	self flushCaches.
