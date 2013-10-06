returnValue
	"Force a return of a given value to the previous context!"

	| previous selectedContext expression value |
	contextStackIndex = 0 ifTrue: [^Beeper beep].
	self isPostMortem ifTrue: [^ self].
	selectedContext := self selectedContext.
	expression := UIManager default request: 'Enter expression for return value:'.
	value := self class compiler
				evaluate: expression
				in: selectedContext
				to: selectedContext receiver.
	previous := selectedContext sender.
	self resetContext: previous.
	interruptedProcess popTo: previous value: value