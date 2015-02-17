update40496
	"self new update40496"
	self withUpdateLog: '14935 Load new configuratoin of TxText 2.8.2
	https://pharo.fogbugz.com/f/cases/14935'.
	self loadTogether: self script496 merge: false.
	self loadConfiguration: 'TxText' version: '2.8.2'.self flushCaches.
