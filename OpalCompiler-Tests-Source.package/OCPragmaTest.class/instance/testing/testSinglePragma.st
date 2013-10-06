testSinglePragma
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodSinglePragma in: self class notifying: [nil].
	self assert: (aRBMethode compiledMethod pragmas first keyword = #hello:)
	