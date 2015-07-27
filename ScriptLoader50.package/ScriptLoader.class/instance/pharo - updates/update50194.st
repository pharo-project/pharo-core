update50194
	"self new update50194"
	self withUpdateLog: '15951 remove all direct references to Workspace
	https://pharo.fogbugz.com/f/cases/15951

16042 TxTxt: load latest in image
	https://pharo.fogbugz.com/f/cases/16042'.
	self loadTogether: self script50194 merge: false.
	self loadConfiguration: 'TxText' version: '2.11'.self flushCaches.
