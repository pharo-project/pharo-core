update50185
	"self new update50185"
	self withUpdateLog: '15957 QualityAssistant integration
	https://pharo.fogbugz.com/f/cases/15957'.
	self loadTogether: self script50185 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.1.1'.
QualityAssistantPlugin install.
	self flushCaches.
