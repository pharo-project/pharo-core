update40301
	"self new update40301"
	self withUpdateLog: '14229 Replace Announcer>>#on:send:to:s senders in MonticelloGUI
	https://pharo.fogbugz.com/f/cases/14229

14226 smallLintCritics optimisation is slow
	https://pharo.fogbugz.com/f/cases/14226

14227 Replace Announcer>>#on:send:to:s senders in Monticello-Tests
	https://pharo.fogbugz.com/f/cases/14227

'.
	self loadTogether: self script301 merge: false.
	self flushCaches.
self cleanRepositories.
