update60057
	"self new update60057"
	self withUpdateLog: '18385 CatalogBrowser is required for NautilusGroupAutoBuilder
	https://pharo.fogbugz.com/f/cases/18385

18362 Critics-> critiques renaming
	https://pharo.fogbugz.com/f/cases/18362

18380 ConfigurationOfTxText is not in sync with the current Pharo package versions
	https://pharo.fogbugz.com/f/cases/18380'.
	self loadTogether: self script60057 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v3.0.0'.self flushCaches.
