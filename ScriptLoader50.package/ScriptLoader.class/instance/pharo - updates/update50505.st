update50505
	"self new update50505"
	self withUpdateLog: '17254 Object>>#clone method is not categorised
	https://pharo.fogbugz.com/f/cases/17254

'.
	self loadTogether: self script50505 merge: false.
	self flushCaches.
self cleanRepositories.
