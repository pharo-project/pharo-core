update50181
	"self new update50181"
	self withUpdateLog: '16004 Cleanup useFaultyForParsing
	https://pharo.fogbugz.com/f/cases/16004

16005 Enable new decompiler and remove the old
	https://pharo.fogbugz.com/f/cases/16005

15347 rename package GroupManager as Nautilus-GroupManager
	https://pharo.fogbugz.com/f/cases/15347'.
	self loadTogether: self script50181 merge: false.
	
ScriptLoader new unloadPackageNamed: 'OpalDecompiler'.
	self flushCaches.
