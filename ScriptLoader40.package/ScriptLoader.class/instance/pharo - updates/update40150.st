update40150
	"self new update40150"
	self withUpdateLog: '2489 Strange behavior of Rectangle
	https://pharo.fogbugz.com/f/cases/2489

'.
	self loadTogether: self script150 merge: false.
	self flushCaches.
self cleanRepositories.
