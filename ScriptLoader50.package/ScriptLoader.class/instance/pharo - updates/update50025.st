update50025
	"self new update50025"
	self withUpdateLog: '15451 AST Shout: should recognize incomplete class names and color them correctly
	https://pharo.fogbugz.com/f/cases/15451

15446 Enhance RadioButtonGroup
	https://pharo.fogbugz.com/f/cases/15446

15448 remove package Play
	https://pharo.fogbugz.com/f/cases/15448'.
	self loadTogether: self script634 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Play'.
	self flushCaches.
