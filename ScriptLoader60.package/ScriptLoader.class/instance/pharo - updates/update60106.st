update60106
	"self new update60106"
	self withUpdateLog: '18562 QualityAssistant v3.1.0
	https://pharo.fogbugz.com/f/cases/18562

18560 haltOnce creates endless recursion ?
	https://pharo.fogbugz.com/f/cases/18560'.
	self loadTogether: self script60106 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.1.0'.self flushCaches.
