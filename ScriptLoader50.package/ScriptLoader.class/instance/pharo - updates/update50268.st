update50268
	"self new update50268"
	self withUpdateLog: '16358 Can not commit three changed method to class TemporaryVariable
	https://pharo.fogbugz.com/f/cases/16358

'.
	self loadTogether: self script50268 merge: false.
	self flushCaches.
self cleanRepositories.
