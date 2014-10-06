update40286
	"self new update40286"
	self withUpdateLog: '14154 GTools version 1.0.5
	https://pharo.fogbugz.com/f/cases/14154'.
	self loadTogether: self script286 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.5'.self flushCaches.
