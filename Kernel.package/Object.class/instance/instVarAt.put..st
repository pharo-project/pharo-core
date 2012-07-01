system primitives
instVarAt: anInteger put: anObject 
	"Primitive. Store a value into a fixed variable in the receiver. The 
	numbering of the variables corresponds to the named instance variables. 
	Fail if the index is not an Integer or is not the index of a fixed variable. 
	Answer the value stored as the result. Using this message violates the 
	principle that each object has sovereign control over the storing of 
	values into its instance variables. Essential. See Object documentation 
	whatIsAPrimitive."

	<primitive: 74>
	"Access beyond fixed fields"
	^self basicAt: anInteger - self class instSize put: anObject