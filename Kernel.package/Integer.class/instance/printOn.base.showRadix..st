printing
printOn: outputStream base: baseInteger showRadix: flagBoolean 
	"Write a sequence of characters that describes the receiver in radix 
	baseInteger with optional radix specifier. 
	The result is undefined if baseInteger less than 2 or greater than 36."
	| tempString startPos |
	#Numeric.
	"2000/03/04  Harmon R. Added ANSI <integer> protocol"

	tempString := self printStringRadix: baseInteger.
	flagBoolean ifTrue: [^ outputStream nextPutAll: tempString].
	startPos := (tempString indexOf: $r ifAbsent: [self error: 'radix indicator not found.'])
				+ 1.
	self negative ifTrue: [outputStream nextPut: $-].
	outputStream nextPutAll: (tempString copyFrom: startPos to: tempString size)