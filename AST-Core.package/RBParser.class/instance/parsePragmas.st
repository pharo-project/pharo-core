private-parsing
parsePragmas
	| pragma start |
	[ currentToken isBinary and: [ currentToken value = #< ] ] whileTrue: [
		start := currentToken start.
		self step.
		pragma := self parsePragma.
		(currentToken isBinary and: [ currentToken value = #> ]) 
			ifFalse: [ ^ self parserError: '''>'' expected' ].
		pragma left: start; right: currentToken start.
		pragmas isNil
			ifTrue: [ pragmas := OrderedCollection new ].
		pragmas addLast: pragma.
		self step ]