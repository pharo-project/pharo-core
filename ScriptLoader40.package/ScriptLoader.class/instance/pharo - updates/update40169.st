update40169
	"self new update40169"
	self withUpdateLog: '13846 split Tests package
	https://pharo.fogbugz.com/f/cases/13846

'.
	self loadTogether: self script169 merge: false.
	self flushCaches.
self cleanRepositories.
