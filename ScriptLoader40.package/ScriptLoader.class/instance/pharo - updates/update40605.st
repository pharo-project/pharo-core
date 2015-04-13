update40605
	"self new update40605"
	self withUpdateLog: '15335 method lost in last monticello change
	https://pharo.fogbugz.com/f/cases/15335'.
	self loadTogether: self script605 merge: false.
	self flushCaches.
