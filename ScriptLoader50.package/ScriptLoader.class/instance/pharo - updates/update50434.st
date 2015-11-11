update50434
	"self new update50434"
	self withUpdateLog: '16983 add <disableReflectivity> pragma, use to to be able to put links on the whole Kernel
	https://pharo.fogbugz.com/f/cases/16983

16982 New ConfigurationOfRubric available
	https://pharo.fogbugz.com/f/cases/16982'.
	self loadTogether: self script50434 merge: false.
	self loadConfiguration: 'Rubric' version: '2.2'.self flushCaches.
