update40449
	"self new update40449"
	self withUpdateLog: '14742 Fix: Allow defining simple ClassVariales using symbols
	https://pharo.fogbugz.com/f/cases/14742

14712 The print-popper should have a different color than the selection in the default Pharo theme
	https://pharo.fogbugz.com/f/cases/14712

14515 Damaged configurations in the image
	https://pharo.fogbugz.com/f/cases/14515'.
	self loadTogether: self script449 merge: false.
	Pharo3Theme newDefaultSettings.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGlamour'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGTPlayground'.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGTInspector'.
	self flushCaches.
self cleanRepositories.
