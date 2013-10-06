update30456
	"self new update30456"
	self withUpdateLog: '11789 Trivial Critic clean in *Completion
	https://pharo.fogbugz.com/f/cases/11789
	
11796 New Critic Rule: Nobody should directly send #methodDict
	https://pharo.fogbugz.com/f/cases/11796
'.
	self loadTogether: self script111 merge: false.
	self flushCaches.
