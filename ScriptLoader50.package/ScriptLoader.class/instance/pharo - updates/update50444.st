update50444
	"self new update50444"
	self withUpdateLog: '16916 QualityAssistant v2.0
	https://pharo.fogbugz.com/f/cases/16916'.
	self loadTogether: self script50444 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.0.1'.self flushCaches.
