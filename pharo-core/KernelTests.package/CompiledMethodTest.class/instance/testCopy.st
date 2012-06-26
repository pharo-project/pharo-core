tests - copying
testCopy

	| source copy |
	source := Object>>#at:.
	copy := source copy.

	self deny: source == copy.
	self assert: source header = copy header.

	1 to: source literals size do: [:index |
		(source literalAt: index) class == AdditionalMethodState
			ifFalse: [self assert: (source literalAt: index) == (copy literalAt: index)]
			ifTrue: [
				self assert: (copy literalAt: index) method == copy.
				self deny: (source literalAt: index) == (copy literalAt: index).
				(copy literalAt: index) pragmas do: [:pragma | self assert: pragma method == copy]]].


