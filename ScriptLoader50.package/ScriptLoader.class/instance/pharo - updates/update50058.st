update50058
	"self new update50058"
	self withUpdateLog: '15567 TxText Cleanup for Pharo 5.0 #4
	https://pharo.fogbugz.com/f/cases/15567'.
	self loadTogether: self script50058 merge: false.
	self loadConfiguration: 'TxText' version: '2.10'.self flushCaches.
