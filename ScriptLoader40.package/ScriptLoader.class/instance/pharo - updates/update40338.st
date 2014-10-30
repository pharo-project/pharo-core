update40338
	"self new update40338"
	self withUpdateLog: '14343 MorphicUIBugTest failing with GTPlayground active
	https://pharo.fogbugz.com/f/cases/14343

'.
	self loadTogether: self script338 merge: false.
	self flushCaches.
self cleanRepositories.
