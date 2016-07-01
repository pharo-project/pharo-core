update60131
	"self new update60131"
	self withUpdateLog: '18661 Failing test: CompiledMethodTest>>#testSendsSelector
	https://pharo.fogbugz.com/f/cases/18661

18654 Setting are not being loaded AGAIN
	https://pharo.fogbugz.com/f/cases/18654

18660 Unify property API of Behaviours to follow that of RBMethodNode, RPackage and Slots
	https://pharo.fogbugz.com/f/cases/18660

18662 Failing test: OCCompilerTest>>#testScaledDecimalLiterals
	https://pharo.fogbugz.com/f/cases/18662'.
	self loadTogether: self script60131 merge: false.
	self flushCaches.
