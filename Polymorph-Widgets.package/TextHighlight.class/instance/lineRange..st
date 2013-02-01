accessing
lineRange: anObject
	"Set the value of lineRange"

	lineRange := anObject.
	lineHighligths := Set new.
	
	self setLineHighLights.