update30496
	"self new update30496"
	self withUpdateLog: '11917 add setting to choose IconSet
	https://pharo.fogbugz.com/f/cases/11917
	
11918 division by zero when creating a new method
	https://pharo.fogbugz.com/f/cases/11918
	
11919 unload more metacello tests
	https://pharo.fogbugz.com/f/cases/11919
'.
	self loadTogether: self script151 merge: false.
	ScriptLoader new unloadPackageNamed: 'Metacello-TestsReference'.
ScriptLoader new unloadPackageNamed: 'Metacello-TestsProfStef'.
	self flushCaches.
