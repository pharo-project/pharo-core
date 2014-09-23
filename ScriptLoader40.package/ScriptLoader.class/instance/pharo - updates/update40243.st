update40243
	"self new update40243"
	self withUpdateLog: '11996 Wrong exception handler problem
	https://pharo.fogbugz.com/f/cases/11996

14048 two tests failing in EmbeddedFreeTypeFontInstallerTest
	https://pharo.fogbugz.com/f/cases/14048'.
	self loadTogether: self script243 merge: false.
	EmbeddedFreeTypeFontInstaller initialize.
	self flushCaches.
self cleanRepositories.
