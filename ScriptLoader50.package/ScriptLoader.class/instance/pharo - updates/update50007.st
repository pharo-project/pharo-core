update50007
	"self new update50007"
	self withUpdateLog: '15380 Failing test: ClassTest.testClassRespectsPolymorphismWithTrait
	https://pharo.fogbugz.com/f/cases/15380

15379 Failing Test:  MatrixTest>>#testOneColumnOnly
	https://pharo.fogbugz.com/f/cases/15379

15378 Pharo5 0003: Nautilus start with pre-set filter
	https://pharo.fogbugz.com/f/cases/15378

'.
	self loadTogether: self script616 merge: false.
	self flushCaches.
self cleanRepositories.
