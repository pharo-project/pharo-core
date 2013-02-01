proxy functions
booleanValueOf: oop
	"convert true and false (Smalltalk) to true or false(C).
	Fails if oop is not a boolean object"
	
	^ self simpleCall