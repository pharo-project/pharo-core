update60461
	"self new update60461"
	self withUpdateLog: '19918 split unixModuleName into unix32ModuleName and unix64ModuleName
	https://pharo.fogbugz.com/f/cases/19918'.
	self loadTogether: self script60461 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.26.7'.self flushCaches.
