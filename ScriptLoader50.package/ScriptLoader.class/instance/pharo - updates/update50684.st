update50684
	"self new update50684"
	self withUpdateLog: '17989 QualityAssistant v2.6.3 (memory leak fix)
	https://pharo.fogbugz.com/f/cases/17989'.
	self loadTogether: self script50684 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.6.3'.self flushCaches.
