update50668
	"self new update50668"
	self withUpdateLog: '17909 Update Rubric to 2.16
	https://pharo.fogbugz.com/f/cases/17909'.
	self loadTogether: self script50668 merge: false.
	self loadConfiguration: 'Rubric' version: '2.16'.self flushCaches.
