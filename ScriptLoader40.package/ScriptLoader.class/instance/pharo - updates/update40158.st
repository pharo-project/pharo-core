update40158
	"self new update40158"
	self withUpdateLog: '11709 remove old ObjectExplorer
	https://pharo.fogbugz.com/f/cases/11709

'.
	self loadTogether: self script158 merge: false.
	ScriptLoader new unloadPackageNamed: 'Tool-Explorer'.
	self flushCaches.
self cleanRepositories.
