updateFieldOffsets

	"Update the field offsets and total structure size, in case if platform has changed and using
	different alignment comparing to previous session"
	
	currentFields ifNil: [ ^ self ].
	
	currentFields updateFieldOffsetsFor: self