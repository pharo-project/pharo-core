update50602
	"self new update50602"
	self withUpdateLog: '17680 SessionManager 1.3
	https://pharo.fogbugz.com/f/cases/17680'.
	self loadTogether: self script50602 merge: false.
	self loadConfiguration: 'SessionManager' version: '1.3'.self flushCaches.
