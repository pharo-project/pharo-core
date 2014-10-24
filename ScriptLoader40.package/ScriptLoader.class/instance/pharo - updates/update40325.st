update40325
	"self new update40325"
	self withUpdateLog: '14309 add #selectItems: and #selectedItems protocols to TickDialogWindow
	https://pharo.fogbugz.com/f/cases/14309

14256 wrong number of tempvars for optimized loops
	https://pharo.fogbugz.com/f/cases/14256

10839 VirtualMachine>>#maxExternalSemaphores: has bogus implementation (sort of)
	https://pharo.fogbugz.com/f/cases/10839

14308 EyeInspector should not register as #basicInspector
	https://pharo.fogbugz.com/f/cases/14308'.
	self loadTogether: self script325 merge: false.
	
Smalltalk tools remove: #basicInspector.
	self flushCaches.
