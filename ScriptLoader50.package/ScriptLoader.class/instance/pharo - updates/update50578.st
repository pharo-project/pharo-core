update50578
	"self new update50578"
	self withUpdateLog: '17573 QualityAssistant v2.3.4
	https://pharo.fogbugz.com/f/cases/17573

16866 DiffMorph with pretty print enabled wrongly shows diff markers for unformatted text
	https://pharo.fogbugz.com/f/cases/16866'.
	self loadTogether: self script50578 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.3.4'.self flushCaches.
