update50331
	"self new update50331"
	self withUpdateLog: '16594 System-Changes should not depend on Text-Core
	https://pharo.fogbugz.com/f/cases/16594

'.
	self loadTogether: self script50331 merge: false.
	self flushCaches.
self cleanRepositories.
