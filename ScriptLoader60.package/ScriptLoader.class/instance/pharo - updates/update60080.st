update60080
	"self new update60080"
	self withUpdateLog: '18474  move var to class refactoring broken II
	https://pharo.fogbugz.com/f/cases/18474

18476 update Versionner to 2.13.15
	https://pharo.fogbugz.com/f/cases/18476

18072 TxModel >>#applyAttribute:to: sends unimplemented message
	https://pharo.fogbugz.com/f/cases/18072'.
	self loadTogether: self script60080 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.15'.
self loadConfiguration: 'TxText' version: '2.12.4'.self flushCaches.
