update50258
	"self new update50258"
	self withUpdateLog: '16301  Monticello should not depend on Tool-ExternalBrowser
	https://pharo.fogbugz.com/f/cases/16301

16336 reduce senders of #hasSpecialSelector:ifTrueSetByte:
	https://pharo.fogbugz.com/f/cases/16336

'.
	self loadTogether: self script50258 merge: false.
	self flushCaches.
self cleanRepositories.
