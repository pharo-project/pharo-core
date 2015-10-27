update50409
	"self new update50409"
	self withUpdateLog: '16254 Failing test: ReleaseTest>>testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/16254

16880 #tearDown for ReflectivityControlTest
	https://pharo.fogbugz.com/f/cases/16880'.
	self loadTogether: self script50409 merge: false.
	self flushCaches.
