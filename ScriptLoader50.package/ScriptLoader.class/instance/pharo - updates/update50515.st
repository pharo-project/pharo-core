update50515
	"self new update50515"
	self withUpdateLog: '17329 Mutex should has tests
	https://pharo.fogbugz.com/f/cases/17329

17210 QualityAssistant v2.2.0
	https://pharo.fogbugz.com/f/cases/17210'.
	self loadTogether: self script50515 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.2.0'.self flushCaches.
