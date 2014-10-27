update40330
	"self new update40330"
	self withUpdateLog: '14324 ThemeIcons has a class instance var "icons" that is not used
	https://pharo.fogbugz.com/f/cases/14324

14316 Float zero and negative zero should not be #literalEqual:
	https://pharo.fogbugz.com/f/cases/14316

14322 fixed WorldSate>>#runLocalStepMethodsIn:
	https://pharo.fogbugz.com/f/cases/14322'.
	self loadTogether: self script330 merge: false.
	
PharoUIThemeIcons instVarNamed: 'current' put: nil.
.
(FloatTest>>#testLiteralEqual) recompile.
	self flushCaches.
