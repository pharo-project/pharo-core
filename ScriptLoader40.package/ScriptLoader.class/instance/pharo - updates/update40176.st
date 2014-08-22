update40176
	"self new update40176"
	self withUpdateLog: '13878 Better comment in Date(class)>>fromString: and test
	https://pharo.fogbugz.com/f/cases/13878

13870 Spotlight: small enhancement for resolving symbols
	https://pharo.fogbugz.com/f/cases/13870

13862 Merge OCompletion into Ecompletion, extract tests
	https://pharo.fogbugz.com/f/cases/13862

'.
	self loadTogether: self script176 merge: false.
	self flushCaches.
self cleanRepositories.
