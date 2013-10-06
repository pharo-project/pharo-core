testExamplePrimitiveErrorCode
	| aMethod newMethod |
	aMethod := OCOpalExamples>>#examplePrimitiveErrorCode.
	newMethod := (aMethod ir) compiledMethodWith: aMethod trailer.
	
	self assert: aMethod abstractSymbolic = newMethod abstractSymbolic.