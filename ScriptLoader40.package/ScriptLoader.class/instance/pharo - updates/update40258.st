update40258
	"self new update40258"
	self withUpdateLog: '14048 two tests failing in EmbeddedFreeTypeFontInstallerTest
	https://pharo.fogbugz.com/f/cases/14048

14079 Inconsistent information in debugger (pharo 4)
	https://pharo.fogbugz.com/f/cases/14079'.
	self loadTogether: self script258 merge: false.
	
EmbeddedFreeTypeFontInstaller initialize.
	self flushCaches.
