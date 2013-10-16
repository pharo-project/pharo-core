update30491
	"self new update30491"
	self withUpdateLog: '11891 Remove Slowest Metacello Tests
	https://pharo.fogbugz.com/f/cases/11891
	
11904 Fix some Undeclared
	https://pharo.fogbugz.com/f/cases/11904

11905 testBlockNumberingForInjectInto should generate method with emedded source
	https://pharo.fogbugz.com/f/cases/11905
'.
	self loadTogether: self script146 merge: false.
	ScriptLoader new unloadPackageNamed: 'Metacello-TestsMCA'.
ScriptLoader new unloadPackageNamed: 'Metacello-TestsMCB'.
	self flushCaches.
