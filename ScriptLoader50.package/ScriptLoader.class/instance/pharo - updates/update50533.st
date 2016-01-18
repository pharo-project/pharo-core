update50533
	"self new update50533"
	self withUpdateLog: '17394 integrate session manager
	https://pharo.fogbugz.com/f/cases/17394'.
	self loadTogether: self script50533 merge: false.
	self loadConfiguration: 'SessionManager' version: '1.0'.self flushCaches.
