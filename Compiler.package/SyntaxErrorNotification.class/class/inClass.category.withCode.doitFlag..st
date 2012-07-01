exceptioninstantiator
inClass: aClass category: aCategory withCode: codeString doitFlag: doitFlag 
	^ (self new
		setClass: aClass
		category: aCategory 
		code: codeString
		doitFlag: doitFlag) signal