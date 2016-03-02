update50623
	"self new update50623"
	self withUpdateLog: '17730 QualityAssistant v2.3.6
	https://pharo.fogbugz.com/f/cases/17730

17529 Slot Migration is broken
	https://pharo.fogbugz.com/f/cases/17529'.
	self loadTogether: self script50623 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.3.6'.self flushCaches.
