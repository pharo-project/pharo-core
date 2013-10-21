compile
	| cm |
	[ast := self parse.
	self doSemanticAnalysis.
	cm := ast generate: self compilationContext compiledMethodTrailer ]
		on: SyntaxErrorNotification 
		do: [ :exception | 
			self compilationContext requestor
                ifNotNil: [
						self compilationContext requestor 
							notify: exception errorMessage , ' ->'
							at: exception location
							in: exception errorCode.
                    ^ self compilationContext failBlock value ]
                ifNil: [ exception pass ]].
	^cm