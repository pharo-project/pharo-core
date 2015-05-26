borderWidth: anObject
	"Set the value of borderWidth"

	borderWidth := anObject.
	lineHighligths do: [:e | e borderWidth: anObject ]