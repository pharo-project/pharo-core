update50001
	"self new update50001"
	self withUpdateLog: '15288 Shortcuts in text editor are hardcoded
	https://pharo.fogbugz.com/f/cases/15288

'.
	self loadTogether: self script610 merge: false.
	self flushCaches.
self cleanRepositories.
