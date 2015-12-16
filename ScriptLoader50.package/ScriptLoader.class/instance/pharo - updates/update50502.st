update50502
	"self new update50502"
	self withUpdateLog: '17250 copy methods from Behavior to TBehavior (spur migration)
	https://pharo.fogbugz.com/f/cases/17250

'.
	self loadTogether: self script50502 merge: false.
	self flushCaches.
self cleanRepositories.
