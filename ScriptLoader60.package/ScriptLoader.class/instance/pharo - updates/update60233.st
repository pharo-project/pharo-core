update60233
	"self new update60233"
	self withUpdateLog: '18327 SystemWindow reset his borderWidth on #themeChanged
	https://pharo.fogbugz.com/f/cases/18327

18825 The current Pharo Fuel platform is still FLPharo5Platform and cannot be reset
	https://pharo.fogbugz.com/f/cases/18825

18731 NeoUUIDGenerator should not rely on Network-Kernel package 
	https://pharo.fogbugz.com/f/cases/18731

18933 unload Collections-Grid and Collections-Grid-Test
	https://pharo.fogbugz.com/f/cases/18933'.
	self loadTogether: self script60233 merge: false.
	
FLPharoPlatform reset; current .
ScriptLoader new unloadPackageNamed: 'Collections-Grid'.
ScriptLoader new unloadPackageNamed: 'Collections-Grid-Tests'.
	self flushCaches.
