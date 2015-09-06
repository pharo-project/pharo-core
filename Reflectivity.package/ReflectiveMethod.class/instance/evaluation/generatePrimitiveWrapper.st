generatePrimitiveWrapper
	| wrappedMethod send wrapperMethod |
	ast compilationContext 
		semanticAnalyzerClass: RFSemanticAnalyzer;
		astTranslatorClass: RFASTTranslator.
	ast doSemanticAnalysis. "force semantic analysis"
	wrappedMethod := ast generate: compiledMethod trailer.
	
	send := RBMessageNode
		receiver: (RBLiteralNode value: wrappedMethod)
		selector:  #valueWithReceiver:arguments: 
		arguments: {RBVariableNode named: #self . RBArrayNode statements: ast variableNodes }.
	
	wrapperMethod := RBMethodNode
		selector: ast selector
		arguments: ast variableNodes 
		body: (RBReturnNode value: send) asSequenceNode.
		
	wrapperMethod methodClass: ast methodClass.
	wrapperMethod propertyAt: #wrappedPrimitive put: true.
	ast hasMetalink ifTrue: [wrapperMethod propertyAt: #links put: (ast propertyAt: #links)].
	ast := wrapperMethod.