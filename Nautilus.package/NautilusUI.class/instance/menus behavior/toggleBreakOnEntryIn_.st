toggleBreakOnEntryIn: aMethod
	"Install or uninstall a halt-on-entry breakpoint"

	aMethod ifNil: [ ^ self ].
	aMethod hasBreakpoint
		ifTrue: [ Breakpoint2 removeFrom: aMethod ]
		ifFalse: [ Breakpoint2 installOn: aMethod ]