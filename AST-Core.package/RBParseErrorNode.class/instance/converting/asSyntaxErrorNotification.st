asSyntaxErrorNotification
	^SyntaxErrorNotification new
		setClass: nil
		category: nil 
		code: self methodNode source
		doitFlag: false
		errorMessage: errorMessage
		location: self start