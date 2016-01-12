update50523
	"self new update50523"
	self withUpdateLog: '17355 Rename DebuggerTest to SpecDebuggerTest
	https://pharo.fogbugz.com/f/cases/17355

17372 New ConfigurationOfFastTable (see description for details)
	https://pharo.fogbugz.com/f/cases/17372

17378 Improve command line handler documentation and help
	https://pharo.fogbugz.com/f/cases/17378

17146 Suggestions in the playground--> Error
	https://pharo.fogbugz.com/f/cases/17146'.
	self loadTogether: self script50523 merge: false.
	self loadConfiguration: 'FastTable' version: '0.8.2'.self flushCaches.
