update50285
	"self new update50285"
	self withUpdateLog: '16347 ComposableModel announcer should not be a valueHolder
	https://pharo.fogbugz.com/f/cases/16347

16401 opening monticello window does not respect world size
	https://pharo.fogbugz.com/f/cases/16401'.
	self loadTogether: self script50285 merge: false.
	self flushCaches.
