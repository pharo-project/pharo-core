error handling
parserError: aString 
	"Evaluate the block. If it returns raise an error"

	self errorBlock value: aString value: self errorPosition.
	self error: aString