update50321
	"self new update50321"
	self withUpdateLog: '16559 fix for #instead links
	https://pharo.fogbugz.com/f/cases/16559

'.
	self loadTogether: self script50321 merge: false.
	self flushCaches.
self cleanRepositories.
