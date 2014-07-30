update40139
	"self new update40139"
	self withUpdateLog: '13730 Globals: fix Undeclared handling
	https://pharo.fogbugz.com/f/cases/13730

'.
	self loadTogether: self script139 merge: false.
	self flushCaches.
self cleanRepositories.
