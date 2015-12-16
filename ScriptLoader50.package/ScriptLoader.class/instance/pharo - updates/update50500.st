update50500
	"self new update50500"
	self withUpdateLog: '17239 monticello: understand to new immediate classes (spur migration)
	https://pharo.fogbugz.com/f/cases/17239

'.
	self loadTogether: self script50500 merge: false.
	self flushCaches.
self cleanRepositories.
