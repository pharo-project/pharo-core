update40280
	"self new update40280"
	self withUpdateLog: '14145 GTools version 1.0.4
	https://pharo.fogbugz.com/f/cases/14145'.
	self loadTogether: self script280 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.4'.self flushCaches.
