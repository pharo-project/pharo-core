update50038
	"self new update50038"
	self withUpdateLog: '
15499 post removal of multiwindow
	https://pharo.fogbugz.com/f/cases/15499

'.
	self loadTogether: self script647 merge: false.
	self flushCaches.
self cleanRepositories.
