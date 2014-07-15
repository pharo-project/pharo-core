update40086
	"self new update40086"
	self withUpdateLog: '13551 Not all SmartSugs works in Debugger
	https://pharo.fogbugz.com/f/cases/13551

'.
	self loadTogether: self script86 merge: false.
	self flushCaches.
self cleanRepositories.
