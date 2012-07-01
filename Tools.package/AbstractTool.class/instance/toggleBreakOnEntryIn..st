method
toggleBreakOnEntryIn: aMethod
	"Install or uninstall a halt-on-entry breakpoint"

	aMethod ifNil: [^self].
	aMethod hasBreakpoint
		ifTrue: [BreakpointManager unInstall: aMethod]
		ifFalse: [BreakpointManager 
					installInClass: aMethod methodClass
					selector: aMethod selector ].