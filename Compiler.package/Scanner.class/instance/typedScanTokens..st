public access
typedScanTokens: textOrString 
	"Answer an Array that has been tokenized with literals mapped to literals,
	 special characters mapped to symbols and variable names and keywords
	 to strings. This methiod accepts := (underscore) as an assignment token
	 irrespective of whether the system prefers := as the assignment token."
	| s |
	self initScannerForTokenization.
	self scan: (textOrString asString readStream).
	s := (Array new: 16) writeStream.
	[tokenType == #doIt] whileFalse:
		[(token == #- 
		  and: [(self typeTableAt: hereChar) == #xDigit]) ifTrue: 
			[self scanToken.
			 token := token negated].
		s nextPut: token.
		self scanToken].
	^s contents

	"Scanner new typedScanTokens: (Scanner sourceCodeAt: #typedScanTokens:)"