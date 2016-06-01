update60055
	"self new update60055"
	self withUpdateLog: '18265 remove Deprecated50 package
	https://pharo.fogbugz.com/f/cases/18265'.
	self loadTogether: self script60055 merge: false.
	ScriptLoader new unloadPackageNamed: 'Deprecated50'.
	self flushCaches.
self cleanRepositories.
