errorPosition
	^currentToken ifNotNil: [ :token | token start] ifNil:[1]