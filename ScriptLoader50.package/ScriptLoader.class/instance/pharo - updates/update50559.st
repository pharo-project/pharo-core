update50559
	"self new update50559"
	self withUpdateLog: '17489 remove testSmoke
	https://pharo.fogbugz.com/f/cases/17489

17463 NautilusUI>>#updatePackages MessageNotUnderstood: RPackage>>item
	https://pharo.fogbugz.com/f/cases/17463

17459 #isInterruptedContextPostMortem should not be used
	https://pharo.fogbugz.com/f/cases/17459
'.
	self loadTogether: self script50559 merge: false.
	self flushCaches.
self cleanRepositories.
