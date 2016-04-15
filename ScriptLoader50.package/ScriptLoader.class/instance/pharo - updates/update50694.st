update50694
	"self new update50694"
	self withUpdateLog: '18010 CompiledMethod>>#hasBreakpoint speedup
	https://pharo.fogbugz.com/f/cases/18010

18011 QA async task flood
	https://pharo.fogbugz.com/f/cases/18011'.
	self loadTogether: self script50694 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.6.5'.self flushCaches.
