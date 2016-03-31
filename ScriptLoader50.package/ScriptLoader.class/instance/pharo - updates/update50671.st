update50671
	"self new update50671"
	self withUpdateLog: '17904 Update athens 3.9
	https://pharo.fogbugz.com/f/cases/17904

17912 QualityAssistant v2.6.2
	https://pharo.fogbugz.com/f/cases/17912'.
	self loadTogether: self script50671 merge: false.
	self loadConfiguration: 'Athens' version: '3.9'.
self loadConfiguration: 'QualityAssistant' version: 'v2.6.2'.self flushCaches.
