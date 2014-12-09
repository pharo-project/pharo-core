update40405
	"self new update40405"
	self withUpdateLog: '14280 TxModel configuration for integration
	https://pharo.fogbugz.com/f/cases/14280'.
	self loadTogether: self script405 merge: false.
	self loadConfiguration: 'TxText' version: '2.8.1'.self flushCaches.
