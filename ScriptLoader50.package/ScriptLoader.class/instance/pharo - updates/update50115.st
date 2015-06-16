update50115
	"self new update50115"
	self withUpdateLog: '15776 Clean up discouraged uses of SourceFiles and friends (2)
	https://pharo.fogbugz.com/f/cases/15776

15681 Manifest-CriticBrowser
	https://pharo.fogbugz.com/f/cases/15681

15775 remove some "halt" that where left over
	https://pharo.fogbugz.com/f/cases/15775'.
	self loadTogether: self script50115 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Manifest-CriticBrowser'.
	self flushCaches.
