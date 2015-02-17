update40495
	"self new update40495"
	self withUpdateLog: '14934 Load new Athens configuration 2.8
	https://pharo.fogbugz.com/f/cases/14934'.
	self loadTogether: self script495 merge: false.
	self loadConfiguration: 'Athens' version: '2.8'.self flushCaches.
