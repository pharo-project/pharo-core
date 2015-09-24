update50340
	"self new update50340"
	self withUpdateLog: '16629 fix: #after on method with arguments
	https://pharo.fogbugz.com/f/cases/16629

'.
	self loadTogether: self script50340 merge: false.
	self flushCaches.
self cleanRepositories.
