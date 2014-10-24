update40324
	"self new update40324"
	self withUpdateLog: '14290 Menu translation should be the responsibility of menus (part 1)
	https://pharo.fogbugz.com/f/cases/14290

'.
	self loadTogether: self script324 merge: false.
	self flushCaches.
self cleanRepositories.
