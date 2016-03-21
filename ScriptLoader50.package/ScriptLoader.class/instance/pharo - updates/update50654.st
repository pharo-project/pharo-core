update50654
	"self new update50654"
	self withUpdateLog: '17838 Add release test checking some important order in startup list
	https://pharo.fogbugz.com/f/cases/17838

17839 release a version with Versionner calls a deprecated method
	https://pharo.fogbugz.com/f/cases/17839

17850 Update Rubric to 2.12
	https://pharo.fogbugz.com/f/cases/17850'.
	self loadTogether: self script50654 merge: false.
	self loadConfiguration: 'Rubric' version: '2.12'.self flushCaches.
