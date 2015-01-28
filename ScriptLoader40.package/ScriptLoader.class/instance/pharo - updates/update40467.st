update40467
	"self new update40467"
	self withUpdateLog: '14801 Migration with slots
	https://pharo.fogbugz.com/f/cases/14801

'.
	self loadTogether: self script467 merge: false.
	self flushCaches.
self cleanRepositories.
