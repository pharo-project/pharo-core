update50092
	"self new update50092"
	self withUpdateLog: '15159 Move file drop handlers to morphic
	https://pharo.fogbugz.com/f/cases/15159

15701 Remove browse compressed changes
	https://pharo.fogbugz.com/f/cases/15701

15655 a MCWorkingCopy(ConfigurationOfRubric)
	https://pharo.fogbugz.com/f/cases/15655

15285 Clean endianness detection
	https://pharo.fogbugz.com/f/cases/15285'.
	self loadTogether: self script50092 merge: false.
	
ScriptLoader new unloadPackageNamed: 'a MCWorkingCopy(ConfigurationOfRubric)'.
	self flushCaches.
