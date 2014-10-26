update40328
	"self new update40328"
	self withUpdateLog: 'issue 40328 cleaning more menus translation
	https://pharo.fogbugz.com/default.asp?14321'.
	self loadTogether: self script328 merge: false.
	self flushCaches.
self cleanRepositories.
