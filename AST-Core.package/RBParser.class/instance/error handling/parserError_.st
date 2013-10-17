parserError: aString 
	"Let the errorBlock try to recover from the error."
	| errorNode errorMessage errorPosition |
	errorNode := self errorBlock cull: aString cull: self errorPosition cull: self.
	errorNode ifNotNil: [ ^ errorNode ].
	currentToken isError 
		ifTrue: [ errorMessage := currentToken cause. errorPosition := currentToken location ] 
		ifFalse: [errorMessage := aString. errorPosition := currentToken start].
	SyntaxErrorNotification
					inClass: Object
					category: nil
					withCode: source
					doitFlag: false
					errorMessage: errorMessage
					location: errorPosition