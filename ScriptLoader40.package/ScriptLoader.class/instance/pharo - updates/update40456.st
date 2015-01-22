update40456
	"self new update40456"
	self withUpdateLog: '14770 Clean up the AST-Interpreter package further
	https://pharo.fogbugz.com/f/cases/14770

14769 final MCClassDefinition>>#load simplification
	https://pharo.fogbugz.com/f/cases/14769'.
	self loadTogether: self script456 merge: false.
	self flushCaches.
