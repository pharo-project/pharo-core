update60090
	"self new update60090"
	self withUpdateLog: '18477 QualityAssistant v3.0.5
	https://pharo.fogbugz.com/f/cases/18477'.
	self loadTogether: self script60090 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.0.5'.
ReRuleManager reset.
	self flushCaches.
