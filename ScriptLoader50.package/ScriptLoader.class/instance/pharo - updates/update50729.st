update50729
	"self new update50729"
	self withUpdateLog: '18118 Author reset should not create new instance
	https://pharo.fogbugz.com/f/cases/18118

18122 QA accessing undeclared var
	https://pharo.fogbugz.com/f/cases/18122'.
	self loadTogether: self script50729 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.6.7'.self flushCaches.
