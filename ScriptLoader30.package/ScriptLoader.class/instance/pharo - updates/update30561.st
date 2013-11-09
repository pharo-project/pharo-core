update30561
	"self new update30561"
	self withUpdateLog: '12121 Nautilus menu code pane menu does not open when only selecting a package but no class
	https://pharo.fogbugz.com/f/cases/12121
	
12119 Inspector double click without wrapping Navigator should open new inspector
	https://pharo.fogbugz.com/f/cases/12119
	
12054 Add TreeNodeModel and TreeColumnModel	
	https://pharo.fogbugz.com/f/cases/12054'.
	self loadTogether: self script217 merge: false.
	SpecInterpreter hardResetBindings.
.
	self flushCaches.
