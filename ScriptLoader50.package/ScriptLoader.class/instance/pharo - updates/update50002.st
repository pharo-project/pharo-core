update50002
	"self new update50002"
	self withUpdateLog: '15358 FreeTypeFont uses the wrong combination rule if subPixelAntiAliasing is disabled
	https://pharo.fogbugz.com/f/cases/15358

'.
	self loadTogether: self script611 merge: false.
	self flushCaches.
self cleanRepositories.
