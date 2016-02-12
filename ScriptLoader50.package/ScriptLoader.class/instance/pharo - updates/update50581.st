update50581
	"self new update50581"
	self withUpdateLog: '14165 ObsoleteTest>>#testFixObsoleteSharedPools
	https://pharo.fogbugz.com/f/cases/14165

16428 cmd+r (rename temporary) does not works all the time
	https://pharo.fogbugz.com/f/cases/16428

17556 Update TxText: In Linux some shortcuts use alt, some others ctrl
	https://pharo.fogbugz.com/f/cases/17556

17330 Push up method refactoring triggers debuggers 
	https://pharo.fogbugz.com/f/cases/17330'.
	self loadTogether: self script50581 merge: false.
	self loadConfiguration: 'TxText' version: '2.12.2'.self flushCaches.
