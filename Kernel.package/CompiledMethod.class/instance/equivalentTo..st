comparing
equivalentTo: aCompiledMethod
	| parseTree |
	^self = aCompiledMethod
	or: [self class == aCompiledMethod class
		and: [self numArgs = aCompiledMethod numArgs
		and: [self numLiterals = aCompiledMethod numLiterals
		and: [parseTree := self decompile.
			(parseTree isKindOf: MethodNode)
				ifTrue: [parseTree asString = aCompiledMethod decompile asString "Standard compiler"]
				ifFalse: [parseTree = aCompiledMethod decompile "RB parse trees, we hope"]]]]]