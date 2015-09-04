update50304
	"self new update50304"
	self withUpdateLog: '16475 Nautilus sends too many announcements for a single action
	https://pharo.fogbugz.com/f/cases/16475

16477 Fixes: #before on sequence, after on Block
	https://pharo.fogbugz.com/f/cases/16477'.
	self loadTogether: self script50304 merge: false.
	self flushCaches.
