update60262
	"self new update60262"
	self withUpdateLog: '19212 Namespace and BrowserEnvironment both now select meta class methods (update test case)
	https://pharo.fogbugz.com/f/cases/19212

19213 closeTo:precision: should be introduced in Float
	https://pharo.fogbugz.com/f/cases/19213'.
	self loadTogether: self script60262 merge: false.
	self flushCaches.
