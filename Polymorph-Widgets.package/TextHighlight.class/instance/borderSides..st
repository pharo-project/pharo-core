accessing
borderSides: anObject
	"Set the value of borderSides"

	borderSides := anObject.
	lineHighligths do: [:e | e borderSides: anObject ]