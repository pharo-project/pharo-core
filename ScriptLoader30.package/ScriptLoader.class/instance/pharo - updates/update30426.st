update30426
	"self new update30426"
	self withUpdateLog: '11691 Failing test: testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/11691
	
11693 Spec building is taking ages due to changes in PragmaCollector
	https://pharo.fogbugz.com/f/cases/11693'.
	self loadTogether: self script105 merge: false.
	self flushCaches.
