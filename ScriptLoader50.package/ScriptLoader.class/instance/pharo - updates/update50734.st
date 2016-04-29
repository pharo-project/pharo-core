update50734
	"self new update50734"
	self withUpdateLog: '18107 Failing on windows: GlobalIdentifierWithFuel>>#testBackwardCompatibility4 
	https://pharo.fogbugz.com/f/cases/18107

18119 Failing again: BehaviorTest>>>#testBehaviorRespectsPolymorphismWithTraitBehavior 
	https://pharo.fogbugz.com/f/cases/18119

18131 File>>readStreamDo: and #writeStreamDo: should answer block value
	https://pharo.fogbugz.com/f/cases/18131'.
	self loadTogether: self script50734 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.3'.self flushCaches.
