update40111
	"self new update40111"
	self withUpdateLog: '13630 Links on Class Variables
	https://pharo.fogbugz.com/f/cases/13630

10034 Remove PackageInfo from system
	https://pharo.fogbugz.com/f/cases/10034

'.
	self loadTogether: self script111 merge: false.
	self flushCaches.
self cleanRepositories.
