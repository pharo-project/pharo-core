testDoublePragma
	| aRBMethode |
	"self debug: #testDoublePragma"
	aRBMethode := OpalCompiler new parse: self methodDoublePragma in: self class notifying: [nil].
	
	self assert: (aRBMethode compiledMethod pragmas first keyword = #hello:).
	self assert: (aRBMethode compiledMethod pragmas second keyword = #hello:)