class factory
ofType: aTypeName
	"Answer an anonymous subclass of receiver, ready for use for creating array(s) with given element type."

	^ self anonymousSubclassInitElementType: aTypeName