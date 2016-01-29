update50557
	"self new update50557"
	self withUpdateLog: '17490 Command Line Handler test runner should print a small stack for failures and errors
	https://pharo.fogbugz.com/f/cases/17490

'.
	self loadTogether: self script50557 merge: false.
	self flushCaches.
self cleanRepositories.
