update50064
	"self new update50064"
	self withUpdateLog: '15605 Update Rubric 
	https://pharo.fogbugz.com/f/cases/15605

'.
	self loadTogether: self script50064 merge: false.
	self flushCaches.
self cleanRepositories.
