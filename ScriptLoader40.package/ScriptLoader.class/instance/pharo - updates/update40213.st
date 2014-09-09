update40213
	"self new update40213"
	self withUpdateLog: '13928 Failing test: RBSearchTest>>#testAllSearches
	https://pharo.fogbugz.com/f/cases/13928

13865 Cleaning menuMorph
	https://pharo.fogbugz.com/f/cases/13865

'.
	self loadTogether: self script213 merge: false.
	self flushCaches.
self cleanRepositories.
