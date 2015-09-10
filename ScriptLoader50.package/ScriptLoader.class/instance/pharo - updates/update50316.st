update50316
	"self new update50316"
	self withUpdateLog: '15845 Integrate DependencyAnalyzer
	https://pharo.fogbugz.com/f/cases/15845

16530 Monticello setting weird
	https://pharo.fogbugz.com/f/cases/16530'.
	self loadTogether: self script50316 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.11'.
MCDirectoryRepository defaultDirectoryName:nil.
	self flushCaches.
