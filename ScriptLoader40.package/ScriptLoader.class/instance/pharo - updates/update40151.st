update40151
	"self new update40151"
	self withUpdateLog: '2489 Strange behavior of Rectangle
	https://pharo.fogbugz.com/f/cases/2489
	Little fix to continue moving.

'.
	self loadTogether: self script151 merge: false.
	self flushCaches.
self cleanRepositories.
