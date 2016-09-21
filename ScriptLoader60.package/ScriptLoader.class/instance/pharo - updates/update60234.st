update60234
	"self new update60234"
	self withUpdateLog: '19115 formatter should not modify symbol formatting in literal arrays
	https://pharo.fogbugz.com/f/cases/19115

19119 Integrate Epicea 8.0.2
	https://pharo.fogbugz.com/f/cases/19119'.
	self loadTogether: self script60234 merge: false.
	self loadConfiguration: 'Epicea' version: '8.0.2'.self flushCaches.
