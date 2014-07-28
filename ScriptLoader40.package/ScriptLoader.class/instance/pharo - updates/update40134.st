update40134
	"self new update40134"
	self withUpdateLog: '13717 testUndeclared failing
	https://pharo.fogbugz.com/f/cases/13717

- recompile Image'.
	self loadTogether: self script134 merge: false.
	OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
