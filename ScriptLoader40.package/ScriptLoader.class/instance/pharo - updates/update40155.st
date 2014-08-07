update40155
	"self new update40155"
	self withUpdateLog: '13774 EyePointerExplorer
	https://pharo.fogbugz.com/f/cases/13774

13792 remove #callers
	https://pharo.fogbugz.com/f/cases/13792

13784 Color>>#asColorref ignores blue
	https://pharo.fogbugz.com/f/cases/13784

'.
	self loadTogether: self script155 merge: false.
	self flushCaches.
self cleanRepositories.
