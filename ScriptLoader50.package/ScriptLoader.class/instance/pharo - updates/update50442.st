update50442
	"self new update50442"
	self withUpdateLog: '17002 EyeInspectorTest assumes that EyeInspector is the default inspector
	https://pharo.fogbugz.com/f/cases/17002

17005 text pane of Nautilus is always returns true for #hasUnacceptedEdits
	https://pharo.fogbugz.com/f/cases/17005

17004 Unify Breakpoint with Breakpoint2
	https://pharo.fogbugz.com/f/cases/17004

17001 new rubric configuration
	https://pharo.fogbugz.com/f/cases/17001'.
	self loadTogether: self script50442 merge: false.
	self loadConfiguration: 'Rubric' version: '2.3'.self flushCaches.
