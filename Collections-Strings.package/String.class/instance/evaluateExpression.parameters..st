private
evaluateExpression: aString parameters: aCollection 
	"private - evaluate the expression aString with  
	aCollection as the parameters and answer the  
	evaluation result as an string"
	| index |
	index := ('0' , aString) asNumber.

	index isZero
		ifTrue: [^ '[invalid subscript: {1}]' format: {aString}].

	index > aCollection size
		ifTrue: [^ '[subscript is out of bounds: {1}]' format: {aString}].

	^ (aCollection at: index) asString