update40302
	"self new update40302"
	self withUpdateLog: '14217 GTTools version 1.0.7
	https://pharo.fogbugz.com/f/cases/14217'.
	self loadTogether: self script302 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.7'.self flushCaches.
