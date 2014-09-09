update40214
	"self new update40214"
	self withUpdateLog: '13955 Rewrite Lint rules to use common tools
	https://pharo.fogbugz.com/f/cases/13955

'.
	self loadTogether: self script214 merge: false.
	self flushCaches.
self cleanRepositories.
