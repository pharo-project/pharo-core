update60068
	"self new update60068"
	self withUpdateLog: '18436 update ConfigurationOfGTInspectorCore to latest version
	https://pharo.fogbugz.com/f/cases/18436

18437 update ConfigurationOfCatalog to latest version
	https://pharo.fogbugz.com/f/cases/18437

18377 ConfigurationOfGTEventRecorder is not in sync with the current package versions
	https://pharo.fogbugz.com/f/cases/18377'.
	self loadTogether: self script60068 merge: false.
	self loadConfiguration: 'GTInspectorCore' version: '3.14'.
self loadConfiguration: 'Catalog' version: '0.15'.
self loadConfiguration: 'GTEventRecorder' version: '0.17'.self flushCaches.
