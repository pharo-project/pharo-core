valueWithArguments: anArray
	| newContext ncv |
	<reflective: #blockClosureValueWithArguments:message:>
	self numArgs ~= anArray size ifTrue:
		[self numArgsError: anArray size].
	^PrimitiveFailed signal