update40140
	"self new update40140"
	self withUpdateLog: '13724 MessageBrowser should be a bit wider...
	https://pharo.fogbugz.com/f/cases/13724

13732 Enable mustBeBooleanInMagic:
	https://pharo.fogbugz.com/f/cases/13732

13618 Recover from toolbar filling the screen from runaway window creation.
	https://pharo.fogbugz.com/f/cases/13618

'.
	self loadTogether: self script140 merge: false.
	self flushCaches.
self cleanRepositories.
