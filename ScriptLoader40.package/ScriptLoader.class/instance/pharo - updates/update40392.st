update40392
	"self new update40392"
	self withUpdateLog: '14550 testTraitExplicitRequirementMethodsMustBeImplementedInTheClassOrInASuperclass failing 200 times
	https://pharo.fogbugz.com/f/cases/14550

14288 Show binary literal for Floats in inspectors
	https://pharo.fogbugz.com/f/cases/14288

14551 Pharo 4.0: Fix "Search Code" refactoring menu item in Nautilus
	https://pharo.fogbugz.com/f/cases/14551

14546 Failed inherited tests should show home class (in TestRunner, like the debugger)
	https://pharo.fogbugz.com/f/cases/14546'.
	self loadTogether: self script392 merge: false.
	
ClassTestCase compileAll.
	self flushCaches.
