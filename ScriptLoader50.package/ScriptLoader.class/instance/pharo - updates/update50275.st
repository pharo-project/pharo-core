update50275
	"self new update50275"
	self withUpdateLog: '16379 Cleanup Locale API
	https://pharo.fogbugz.com/f/cases/16379

16282 Bootstrap should not depend on Graphics
	https://pharo.fogbugz.com/f/cases/16282

16337 The cleaning of File servicies broke some applications
	https://pharo.fogbugz.com/f/cases/16337'.
	self loadTogether: self script50275 merge: false.
	self flushCaches.
