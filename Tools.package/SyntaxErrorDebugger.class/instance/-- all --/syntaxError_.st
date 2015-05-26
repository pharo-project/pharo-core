syntaxError: aSyntaxError
	"extract the instance properties from a SyntaxErrorNotification"
	
	self 
		setClass: aSyntaxError errorClass
		code: aSyntaxError errorCode
		error: aSyntaxError errorMessage
		location: aSyntaxError location
		debugger: (Smalltalk tools debugger context: aSyntaxError signalerContext)
		doitFlag: aSyntaxError doitFlag.
		
	self category: aSyntaxError category.