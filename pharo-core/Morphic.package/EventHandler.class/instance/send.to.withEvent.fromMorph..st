events
send: selector to: recipient withEvent: event fromMorph: sourceMorph
	| arity |
	recipient ifNil: [^ self].
	arity := selector numArgs.
	arity = 0 ifTrue:
		[^ recipient perform: selector].
	arity = 1 ifTrue:
		[^ recipient perform: selector with: event].
	arity = 2 ifTrue:
		[^ recipient perform: selector with: event with: sourceMorph].
	arity = 3 ifTrue:
		[^ recipient perform: selector with: valueParameter with: event with: sourceMorph].
	self error: 'Event handling selectors must be Symbols and take 0-3 arguments'