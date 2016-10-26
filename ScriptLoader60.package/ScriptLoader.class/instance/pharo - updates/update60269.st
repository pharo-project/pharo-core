update60269
	"self new update60269"
	self withUpdateLog: '18351 Inspector goes CPU bound displaying some large Text
	https://pharo.fogbugz.com/f/cases/18351

19224 TestExecutionEnvironment should use Process ondo to insert default error handler
	https://pharo.fogbugz.com/f/cases/19224'.
	self loadTogether: self script60269 merge: false.
	self flushCaches.
