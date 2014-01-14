update30694
	"self new update30694"
	self withUpdateLog: '12644 fix ClassTest>>#testClassRespectsPolymorphismWithTrait: add exception for anonymous class
	https://pharo.fogbugz.com/f/cases/12644'.
	self loadTogether: self script347 merge: false.
	self flushCaches.
