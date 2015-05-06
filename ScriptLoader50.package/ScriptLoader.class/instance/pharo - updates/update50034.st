update50034
	"self new update50034"
	self withUpdateLog: '15461 remove RBIfTrueBlocksRule
	https://pharo.fogbugz.com/f/cases/15461

15487 Update Rubric to version 1.2.14
	https://pharo.fogbugz.com/f/cases/15487'.
	self loadTogether: self script643 merge: false.
	self loadConfiguration: 'Rubric' version: '1.2.14'.self flushCaches.
