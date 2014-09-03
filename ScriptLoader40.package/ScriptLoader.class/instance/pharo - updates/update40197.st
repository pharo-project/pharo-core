update40197
	"self new update40197"
	self withUpdateLog: '13938 Opal, custom compilers and class side methods
	https://pharo.fogbugz.com/f/cases/13938

'.
	self loadTogether: self script197 merge: false.
	self flushCaches.
self cleanRepositories.
