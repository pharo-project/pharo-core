tests
testSelectHandlersCodeLoader
	| args handlers |
	args := self argumentsWith: #('/foo/bar/myScript.st').
	handlers := CommandLineHandler selectHandlersFor: args.
	self assert: handlers first = BasicCodeLoader.
	
	args := self argumentsWith: #('/foo/bar/myScript.st' '--verbose').
	handlers := CommandLineHandler selectHandlersFor: args.
	self assert: handlers first = BasicCodeLoader.