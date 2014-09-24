update40247
	"self new update40247"
	TClass classTrait recompile.
TCairoLibrary classTrait recompile.
.
	self withUpdateLog: '13879 Move Tests out of NECompletion
	https://pharo.fogbugz.com/f/cases/13879

'.
	self loadTogether: self script247 merge: false.
	self flushCaches.
self cleanRepositories.
