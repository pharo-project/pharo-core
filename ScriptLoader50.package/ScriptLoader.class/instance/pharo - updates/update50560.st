update50560
	"self new update50560"
	self withUpdateLog: '16735 Replace Startup/Shutdown list with SessionManager
	https://pharo.fogbugz.com/f/cases/16735
'.
	self loadTogether: self script50560 merge: false.
	self flushCaches.
self cleanRepositories.
