update40301
	"self new update40301"
	self withUpdateLog: '14217 GTTools version 1.0.7
	https://pharo.fogbugz.com/f/cases/14217'.
	self loadTogether: self script301 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.7'.self flushCaches.
