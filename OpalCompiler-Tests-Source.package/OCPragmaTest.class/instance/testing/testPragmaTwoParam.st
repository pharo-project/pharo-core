testPragmaTwoParam
	"self debug: #testPragmaAfterBeforTemp"
	| aRBMethode |
	aRBMethode := OpalCompiler new parse: self methodPragmaTwoParam in: self class notifying: nil.


	self assert: (aRBMethode compiledMethod pragmas first keyword = #hello:by:)
	