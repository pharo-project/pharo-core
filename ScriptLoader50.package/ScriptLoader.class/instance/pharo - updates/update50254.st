update50254
	"self new update50254"
	self withUpdateLog: '16320 Update configuration of Rubric  
	https://pharo.fogbugz.com/f/cases/16320

16313 fix tests failing when unloading old compiler
	https://pharo.fogbugz.com/f/cases/16313

16315 SimpleServerEntry should use a pragma and use them to declare them
	https://pharo.fogbugz.com/f/cases/16315'.
	self loadTogether: self script50254 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18.2'.self flushCaches.
