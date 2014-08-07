update40160
	"self new update40160"
	self withUpdateLog: '13639 RealEstateAgent
	https://pharo.fogbugz.com/f/cases/13639

13797 RecentMessages: remove useAsSet Preference
	https://pharo.fogbugz.com/f/cases/13797

'.
	self loadTogether: self script160 merge: false.
	self flushCaches.
self cleanRepositories.
