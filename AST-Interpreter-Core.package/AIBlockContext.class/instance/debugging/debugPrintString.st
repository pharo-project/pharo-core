debugPrintString
	^'Block in : ', 
		self methodClass name, 
		'>>#', 
		(self method ifNotNil: [:mth | mth selector] ifNil: [#unknownSelector]), 
		String lf, 
		self code formattedCode printString