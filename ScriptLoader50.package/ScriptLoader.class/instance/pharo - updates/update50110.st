update50110
	"self new update50110"
	self withUpdateLog: '15746 clean up RPackage-SystemIntegration
	https://pharo.fogbugz.com/f/cases/15746

15681 Manifest-CriticBrowser
	https://pharo.fogbugz.com/f/cases/15681

15718 Remove StringHolder
	https://pharo.fogbugz.com/f/cases/15718

15532 Methods in Object category drag and drop should be a Morphic extension
	https://pharo.fogbugz.com/f/cases/15532'.
	self loadTogether: self script50110 merge: false.
	
ScriptLoader new unloadPackageNamed: 'RPackage-SystemIntegration'.
ScriptLoader new unloadPackageNamed: 'Manifest-CriticBrowser'.
	self flushCaches.
