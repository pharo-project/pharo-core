toggleBreakOnEntryFor: aContext
	"Install or uninstall a halt-on-entry breakpoint"

	| selectedMethod |
	self flag: 'should be called only on the selected context'.	
	selectedMethod := aContext methodClass >> aContext methodSelector.
	selectedMethod hasBreakpoint
		ifTrue:
			[BreakpointManager unInstall: selectedMethod]
		ifFalse:
			[BreakpointManager 
				installInClass: aContext methodClass
				selector: aContext methodSelector].