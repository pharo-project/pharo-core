= aCharacter 
	"Primitive. Answer true if the receiver and the argument are the same
	object (have the same object pointer) and false otherwise. Optional. See
	Object documentation whatIsAPrimitive."

	^ self == aCharacter or:[
		aCharacter isCharacter and: [self asciiValue = aCharacter asciiValue]]