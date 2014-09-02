update40196
	"self new update40196"
	self withUpdateLog: '13941 [FEATURE]: Configuration Browser: Switch to Any Repository
	https://pharo.fogbugz.com/f/cases/13941

13938 Opal, custom compilers and class side methods
	https://pharo.fogbugz.com/f/cases/13938

'.
	self loadTogether: self script196 merge: false.
	self flushCaches.
self cleanRepositories.
