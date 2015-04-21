update50003
	"self new update50003"
	self withUpdateLog: '15330 NumberParser>>#isNumber:
	https://pharo.fogbugz.com/f/cases/15330

15368 unload Deprecate40 in Pharo5
	https://pharo.fogbugz.com/f/cases/15368'.
	self loadTogether: self script612 merge: false.
	ScriptLoader new unloadPackageNamed: 'Deprecated40'.
	self flushCaches.
self cleanRepositories.
