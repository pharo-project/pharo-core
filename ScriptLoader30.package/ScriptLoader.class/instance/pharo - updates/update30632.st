update30632
	"self new update30632"
	self withUpdateLog: '12372 remove all direct references to Compiler
	https://pharo.fogbugz.com/f/cases/12372
	
12357 Failing test: #testCanUnderstand
	https://pharo.fogbugz.com/f/cases/12357
	'.
	self loadTogether: self script287 merge: false.
	self flushCaches.
