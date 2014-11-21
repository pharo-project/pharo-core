update40380
	"self new update40380"
	self withUpdateLog: '14510 Wrong editing history positions after using home-key
	https://pharo.fogbugz.com/f/cases/14510

14495 Adding dependent projects in Versionner fails (adding to array instead of collection)
	https://pharo.fogbugz.com/f/cases/14495

'.
	self loadTogether: self script380 merge: false.
	self flushCaches.
self cleanRepositories.
