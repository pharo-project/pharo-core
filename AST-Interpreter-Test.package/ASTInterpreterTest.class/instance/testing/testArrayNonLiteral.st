testArrayNonLiteral
	|x y|
	x := 5 + 2.
	y := #aSymbol.

	self assert: (self interpret: '|x y|
		x := 5 + 2.
		y := #aSymbol.
		{x . y}') equals: {x . y}.