update50719
	"self new update50719"
	self withUpdateLog: '18098 ShoreLine Reporter version 0.2.3
	https://pharo.fogbugz.com/f/cases/18098'.
	self loadTogether: self script50719 merge: false.
	self loadConfiguration: 'ShoreLineReporter' version: '0.2.3'.self flushCaches.
