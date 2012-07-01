as yet unclassified
checkResult: resultString
(#( 'HTTP/1.1 201 ' 'HTTP/1.1 200 ' 'HTTP/1.0 201 ' 'HTTP/1.0 200 ')
		anySatisfy: [:code | resultString beginsWith: code ])
			ifFalse: [self error: resultString].
