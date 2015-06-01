update50079
	"self new update50079"
	
ScriptLoader new unloadPackageNamed: 'ConfigurationOfRubric'.
	self withUpdateLog: '15656 red box of dead in menus when symbol font is absent
	https://pharo.fogbugz.com/f/cases/15656

15654 Update Rubric
	https://pharo.fogbugz.com/f/cases/15654'.
	self loadTogether: self script50079 merge: false.
	self loadConfiguration: 'Rubric' version: '1.3'.self flushCaches.
