update50187
	"self new update50187"
	self withUpdateLog: '16019 BreakPoints should install links that compile directly on installation
	https://pharo.fogbugz.com/f/cases/16019

16017 RBScanner>>#flush not needed
	https://pharo.fogbugz.com/f/cases/16017

16016 Replace with #allSatisfy:, #anySatisfy:
	https://pharo.fogbugz.com/f/cases/16016'.
	self loadTogether: self script50187 merge: false.
	self flushCaches.
