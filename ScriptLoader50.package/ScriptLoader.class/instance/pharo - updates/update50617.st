update50617
	"self new update50617"
	self withUpdateLog: '17283 strange monticello repo in 507: http://www.squeaksource.com/Pharo/ 
	https://pharo.fogbugz.com/f/cases/17283

16436 add RBSelfSuperSentNotImplementedRule
	https://pharo.fogbugz.com/f/cases/16436

17622 Failing test: MethodPragmaTest>>#testPrimitiveNamedErrorCode1
	https://pharo.fogbugz.com/f/cases/17622

17714  Clean old startup mechanism - part 2
	https://pharo.fogbugz.com/f/cases/17714

17691 ProfStef menu are broken
	https://pharo.fogbugz.com/f/cases/17691'.
	self loadTogether: self script50617 merge: false.
	
ScriptLoader new unloadPackageNamed: 'ConfigurationOfGofer'.
	self flushCaches.
