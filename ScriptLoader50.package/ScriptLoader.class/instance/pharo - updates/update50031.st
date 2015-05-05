update50031
	"self new update50031"
	self withUpdateLog: '15475 TxText Cleanup for Pharo 5.0 #2
	https://pharo.fogbugz.com/f/cases/15475'.
	self loadTogether: self script640 merge: false.
	self loadConfiguration: 'TxText' version: '2.8.5'.self flushCaches.
