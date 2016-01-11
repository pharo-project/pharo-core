update50522
	"self new update50522"
	self withUpdateLog: '17356 QualityAssistant v2.2.1
	https://pharo.fogbugz.com/f/cases/17356

17300 Class slots are not persisted in Monticello
	https://pharo.fogbugz.com/f/cases/17300'.
	self loadTogether: self script50522 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.2.1'.self flushCaches.
