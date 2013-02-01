as yet unclassified
pvtEnter: arguments stackPointer: savedStackPtr primitiveMethod: aMethod
	"Note, this is for internal use only!!! do not touch this method ever! "
	| result theSender |
	result := 0.
	theSender := thisContext sender.
	[ 
	result := block valueWithArguments: arguments ]
	ensure: [
		self 
			primLeave: self class callbackLeaveAddress asUnsignedLong 
			stackPtr: savedStackPtr 
			contextOop: theSender 
			returnValue: result
			primitiveMethod: aMethod
		]
