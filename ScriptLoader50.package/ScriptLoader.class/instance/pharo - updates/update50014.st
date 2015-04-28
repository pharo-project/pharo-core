update50014
	"self new update50014"
	self withUpdateLog: '15416 Load new Athens configuration (3.4)
	https://pharo.fogbugz.com/f/cases/15416

15414 TxText Cleanup for Pharo 5.0 #1
	https://pharo.fogbugz.com/f/cases/15414'.
	self loadTogether: self script623 merge: false.
	self loadConfiguration: 'Athens' version: '3.4'.
self loadConfiguration: 'TxText' version: '2.8.4'.self flushCaches.
