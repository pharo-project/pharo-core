testErrorToken
	| token1 token2 |
	
	token1 := ContextPart primitiveFailToken.
	token2 := ContextPart primitiveFailTokenFor: 100.

	self assert: token1 first == token2 first.
	self assert: token1 second == nil.
	self assert: token2 second == 100.