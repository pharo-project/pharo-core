testExampleInlineBlockCollectionLR3
	| aMethod newMethod |
	aMethod := OCOpalExamples>>#exampleInlineBlockCollectionLR3.
	newMethod := (aMethod ir) compiledMethodWith: aMethod trailer.
	
	self assert: aMethod abstractSymbolic = newMethod abstractSymbolic.