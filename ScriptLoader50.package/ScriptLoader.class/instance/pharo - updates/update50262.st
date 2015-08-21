update50262
	"self new update50262"
	self withUpdateLog: '16348 Deprecate HelpIcon and HelpIconTest
	https://pharo.fogbugz.com/f/cases/16348

16351 skip testTestInterferenceWithSystemTimingSemaphore for now
	https://pharo.fogbugz.com/f/cases/16351

16345 Improve the feedback system of QualityAssistant
	https://pharo.fogbugz.com/f/cases/16345'.
	self loadTogether: self script50262 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.3.0'.self flushCaches.
