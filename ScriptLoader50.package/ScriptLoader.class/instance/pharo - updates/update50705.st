update50705
	"self new update50705"
	self withUpdateLog: '18056 Sync OSWindow with upstream for Pharo5
	https://pharo.fogbugz.com/f/cases/18056'.
	self loadTogether: self script50705 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.7'.self flushCaches.
