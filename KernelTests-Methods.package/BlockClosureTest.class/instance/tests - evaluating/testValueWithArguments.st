testValueWithArguments
	self
		should: [aBlockContext
				valueWithArguments: #(1 )]
		raise: Error.
	self
		shouldnt: [aBlockContext
				valueWithArguments: #()]
		raise: Error.
	[aBlockContext
		valueWithArguments: #(1 )]
		ifError: [:err  | self assert: err = 'Error: This block accepts 0 arguments, but was called with 1 argument.'].
	[[:i | 3 + 4]
		valueWithArguments: #(1 2)]
		ifError: [:err | self assert: err = 'Error: This block accepts 1 argument, but was called with 2 arguments.']