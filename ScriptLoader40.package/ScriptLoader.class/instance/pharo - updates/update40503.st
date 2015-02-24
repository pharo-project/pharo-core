update40503
	"self new update40503"
	self withUpdateLog: '14954 load new configuration 2.9 (more morphic support)
	https://pharo.fogbugz.com/f/cases/14954

14955 load new TxText configuration 2.8.3 (more morphic support)
	https://pharo.fogbugz.com/f/cases/14955'.
	self loadTogether: self script503 merge: false.
	self loadConfiguration: 'Athens' version: '2.9'.
self loadConfiguration: 'TxText' version: '2.8.3'.self flushCaches.
