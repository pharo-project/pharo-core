update40327
	"self new update40327"
	self withUpdateLog: '13115 unnecessary concatenation 
	https://pharo.fogbugz.com/f/cases/13115

13158 Adding class-side #initialize should not template with /super initialize/
	https://pharo.fogbugz.com/f/cases/13158

'.
	self loadTogether: self script327 merge: false.
	OpalCompiler recompileAll.
	self flushCaches.
self cleanRepositories.
