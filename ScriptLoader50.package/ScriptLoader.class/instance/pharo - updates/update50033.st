update50033
	"self new update50033"
	self withUpdateLog: '15481 TxText Cleanup for Pharo 5.0 #3
	https://pharo.fogbugz.com/f/cases/15481'.
	self loadTogether: self script642 merge: false.
	self loadConfiguration: 'TxText' version: '2.9'.self flushCaches.
