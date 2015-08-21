update50260
	"self new update50260"
	self withUpdateLog: '16341 Update key text for browse version since the shortcut changed
	https://pharo.fogbugz.com/f/cases/16341

'.
	self loadTogether: self script50260 merge: false.
	self flushCaches.
self cleanRepositories.
