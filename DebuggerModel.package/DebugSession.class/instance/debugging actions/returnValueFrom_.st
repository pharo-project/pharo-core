returnValueFrom: aContext
	"Force a return of a given value to the previous context!"

	| previous expression value |
	self flag: 'should be called only on the selected context'.	
	(self isContextPostMortem: aContext) ifTrue: [^ self].
	
	expression := UIManager default request: 'Enter expression for return value:'.
	value := self class compiler
				evaluate: expression
				in: aContext
				to: aContext receiver.
	previous := aContext sender.
"	self resetContext: previous."
	interruptedProcess popTo: previous value: value.
	self updateContextTo: previous.
	self contextChanged 