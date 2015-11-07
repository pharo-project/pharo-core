update50425
	"self new update50425"
	self withUpdateLog: '16946 revert 16814: Monkey completely broken
	https://pharo.fogbugz.com/f/cases/16946'.
	self loadTogether: self script50425 merge: false.
	self flushCaches.
