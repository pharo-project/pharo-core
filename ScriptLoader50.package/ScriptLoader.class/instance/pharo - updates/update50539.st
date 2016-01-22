update50539
	"self new update50539"
	self withUpdateLog: '17429 QualityAssistant v2.3
	https://pharo.fogbugz.com/f/cases/17429'.
	self loadTogether: self script50539 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.3.1'.self flushCaches.
