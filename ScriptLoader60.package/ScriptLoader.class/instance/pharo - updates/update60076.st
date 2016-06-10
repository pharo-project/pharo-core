update60076
	"self new update60076"
	self withUpdateLog: '18464 Update ConfigurationOfRubric to 2.20.2
	https://pharo.fogbugz.com/f/cases/18464'.
	self loadTogether: self script60076 merge: false.
	self loadConfiguration: 'Rubric' version: '2.20.2'.self flushCaches.
