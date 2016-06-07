update60067
	"self new update60067"
	self withUpdateLog: '18403 ConfigurationOfGTInspectorCore needs update versions of dependencies
	https://pharo.fogbugz.com/f/cases/18403

18423 Fix Glamour-Tests-Core extensions capitalization
	https://pharo.fogbugz.com/f/cases/18423

18402 ConfigurationOfGTSpotter needs update versions of dependencies
	https://pharo.fogbugz.com/f/cases/18402'.
	self loadTogether: self script60067 merge: false.
	self loadConfiguration: 'GTInspectorCore' version: '3.13'.
self loadConfiguration: 'GlamourCore' version: '4.16'.
self loadConfiguration: 'GTSpotter' version: '2.11'.self flushCaches.
