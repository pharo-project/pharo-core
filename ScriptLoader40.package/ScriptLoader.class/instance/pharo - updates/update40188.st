update40188
	"self new update40188"
	self withUpdateLog: '13885 Integration report is not showing the changes integrated
	https://pharo.fogbugz.com/f/cases/13885
'.
	self loadTogether: self script188 merge: false.
	ScriptLoader new unloadPackageNamed: 'ScriptLoader40-Tests'.
	self flushCaches.
self cleanRepositories.
