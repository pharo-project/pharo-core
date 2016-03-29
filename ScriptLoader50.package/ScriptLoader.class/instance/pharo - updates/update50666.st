update50666
	"self new update50666"
	self withUpdateLog: '17903 Update Rubric 2.15
	https://pharo.fogbugz.com/f/cases/17903'.
	self loadTogether: self script50666 merge: false.
	self loadConfiguration: 'Rubric' version: '2.15'.self flushCaches.
