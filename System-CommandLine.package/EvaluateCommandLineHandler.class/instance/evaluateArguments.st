activation
evaluateArguments
	| args |
	args :=  self arguments joinUsing: Character space.
	args ifEmpty: [ ^ self ].
	self evaluate: args