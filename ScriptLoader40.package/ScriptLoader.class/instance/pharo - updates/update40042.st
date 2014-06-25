update40042
	"self new update40042"
	self withUpdateLog: '13397 Failing tests SHA256Tests
	https://pharo.fogbugz.com/f/cases/13397

13396 Failing test: ReleaseTests>>#testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/13396

'.
	self loadTogether: self script42 merge: false.
	self flushCaches.
