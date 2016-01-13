update50525
	"self new update50525"
	self withUpdateLog: '17367 ThreePhaseButtonMorph + subclasses has unnessecary stepping
	https://pharo.fogbugz.com/f/cases/17367

17377 QualityAssistant v2.2.2
	https://pharo.fogbugz.com/f/cases/17377'.
	self loadTogether: self script50525 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.2.2'.self flushCaches.
