update30588
	"self new update30588"
	self withUpdateLog: '12165 #testObsoleteBehaviors failing after running native boost tests
	https://pharo.fogbugz.com/f/cases/12165
	
12220 Move AST-Cores deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/12220
	
12208 Fix tree filtering
	https://pharo.fogbugz.com/f/cases/12208
	
12219 Move System-Platforms deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/12219
	'.
	self loadTogether: self script243 merge: false.
	self flushCaches.
