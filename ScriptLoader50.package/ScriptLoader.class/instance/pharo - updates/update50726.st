update50726
	"self new update50726"
	self withUpdateLog: '18115 QA v2.6.6
	https://pharo.fogbugz.com/f/cases/18115'.
	self loadTogether: self script50726 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.6.6'.self flushCaches.
