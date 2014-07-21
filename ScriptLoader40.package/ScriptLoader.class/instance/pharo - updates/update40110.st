update40110
	"self new update40110"
	self withUpdateLog: '10034 Remove PackageInfo from system
	https://pharo.fogbugz.com/f/cases/10034

'.
	self loadTogether: self script110 merge: false.
	self flushCaches.
self cleanRepositories.
