update30755
	"self new update30755"
	self withUpdateLog: '12845 Make Cmd-L working the cancel without asking to cancel
	https://pharo.fogbugz.com/f/cases/12845

12856 Class comments missing in package Graphics-Display Objects
	https://pharo.fogbugz.com/f/cases/12856

12848 The filtering on top of packages is broken
	https://pharo.fogbugz.com/f/cases/12848

'.
	self loadTogether: self script408 merge: false.
	self flushCaches.
