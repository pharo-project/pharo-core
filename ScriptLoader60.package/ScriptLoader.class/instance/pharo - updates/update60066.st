update60066
	"self new update60066"
	self withUpdateLog: '18420 Fix Metacello-Core extensions capitalization
	https://pharo.fogbugz.com/f/cases/18420

18417 Fix Reflectivity extensions capitalization
	https://pharo.fogbugz.com/f/cases/18417

18422 CompiledMethod depends on old BytecodeEncoder classes
	https://pharo.fogbugz.com/f/cases/18422

18380 ConfigurationOfTxText is not in sync with the current Pharo package versions
	https://pharo.fogbugz.com/f/cases/18380'.
	self loadTogether: self script60066 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.3'.self flushCaches.
