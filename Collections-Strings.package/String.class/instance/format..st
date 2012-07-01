formatting
format: aCollection 
	"format the receiver with aCollection  
	 
	simplest example:  
	'foo {1} bar' format: {Date today}.
	 
	complete example:  
	'\{ \} \\ foo {1} bar {2}' format: {12. 'string'}.  
	"
	| result stream |
	result := String new writeStream.
	stream := self readStream.

	[stream atEnd]
		whileFalse: [| currentChar | 
			currentChar := stream next.
			currentChar == ${
				ifTrue: [| expression | 
					expression := self getEnclosedExpressionFrom: stream.
					result
						nextPutAll: (self evaluateExpression: expression parameters: aCollection)]
				ifFalse: [
					currentChar == $\
						ifTrue: [stream atEnd
								ifFalse: [result nextPut: stream next]]
						ifFalse: [result nextPut: currentChar]]].

	^ result contents