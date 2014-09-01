update40195
	"self new update40195"
	self withUpdateLog: '13185 Move embedded fonts from Freetype package into separate package
	https://pharo.fogbugz.com/f/cases/13185

'.
	self loadTogether: self script195 merge: false.
	self flushCaches.
self cleanRepositories.
