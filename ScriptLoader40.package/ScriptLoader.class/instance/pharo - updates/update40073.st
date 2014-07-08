update40073
	"self new update40073"
	self withUpdateLog: '13498 rename KeyChain package to UserManager-Core
	https://pharo.fogbugz.com/f/cases/13498

'.
	self loadTogether: self script73 merge: false.
	self flushCaches.
self cleanRepositories.
