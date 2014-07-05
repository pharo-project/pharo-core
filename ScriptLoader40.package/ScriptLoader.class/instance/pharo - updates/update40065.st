update40065
	"self new update40065"
	self withUpdateLog: '13357 ScriptLoader should automatically reassign repository
	https://pharo.fogbugz.com/f/cases/13357

13370 Polymorph-Tools-Diff extensions should be moved to their class.
	https://pharo.fogbugz.com/f/cases/13370

13474 Small cleanup for RecentMessageList
	https://pharo.fogbugz.com/f/cases/13474

'.
	self loadTogether: self script65 merge: false.
	self flushCaches.
self cleanRepositories.
