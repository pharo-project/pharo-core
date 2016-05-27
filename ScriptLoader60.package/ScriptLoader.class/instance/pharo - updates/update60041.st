update60041
	"self new update60041"
	DangerousClassNotifier disable.
	self withUpdateLog: '18306 CompiledCode comments
	https://pharo.fogbugz.com/f/cases/18306

'.
	self loadTogether: self script60041 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
