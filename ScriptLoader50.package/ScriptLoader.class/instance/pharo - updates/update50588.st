update50588
	"self new update50588"
	
(CompiledMethodTest >> #testComparison ) recompile.
	self withUpdateLog: '17619 Failing test on CI: CompiledMethodTest>>#testComparison
	https://pharo.fogbugz.com/f/cases/17619

17625 The immediateSubclass... and variableSubclass method need comments
	https://pharo.fogbugz.com/f/cases/17625

17605 Autofix raises DNU in QualityAssistant
	https://pharo.fogbugz.com/f/cases/17605'.
	self loadTogether: self script50588 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.3.5'.self flushCaches.
