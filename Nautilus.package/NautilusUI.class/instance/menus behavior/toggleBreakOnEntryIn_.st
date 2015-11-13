toggleBreakOnEntryIn: aMethod
	"Install or uninstall a halt-on-entry breakpoint"

	aMethod ifNil: [ ^ self ].
	aMethod hasBreakpoint
		ifTrue: [ Breakpoint removeFrom: aMethod ast]
		ifFalse: [ (Breakpoint in: aMethod ast) always]