update40072
	"self new update40072"
	self withUpdateLog: '13494 Merge Settings-Display and FreeType into the packages
	https://pharo.fogbugz.com/f/cases/13494

13496 failing test: testClassRespectsPolymorphismWithTrait
	https://pharo.fogbugz.com/f/cases/13496
	
13487 Bytecode set settings
	https://pharo.fogbugz.com/f/cases/13487

'.
	self loadTogether: self script72 merge: false.
	ScriptLoader new deletePackage: 'Settings-Display'.
ScriptLoader new deletePackage: 'Settings-FreeType'.
	self flushCaches.
self cleanRepositories.
