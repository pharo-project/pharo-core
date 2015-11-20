update50456
	"self new update50456"
	self withUpdateLog: '17068 fix debug highlight of breakpoints
	https://pharo.fogbugz.com/f/cases/17068

17067 Breakpoint #removeAll
	https://pharo.fogbugz.com/f/cases/17067'.
	self loadTogether: self script50456 merge: false.
	self flushCaches.
