update50691
	"self new update50691"
	self withUpdateLog: '17999 Four tests failing in SmalllintManifestCheckerTest
	https://pharo.fogbugz.com/f/cases/17999

16560 test runs: open debugger on failing tests 
	https://pharo.fogbugz.com/f/cases/16560'.
	self loadTogether: self script50691 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.6.4'.self flushCaches.
