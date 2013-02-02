class factory
ofType: aTypeName
	"Answer an anonymous subclass of receiver, ready for use for creating array(s) with given element type."
	
	"we're not using 'self' to avoid wrong subclassing from anonymous subclass "
	^ NBExternalArray shallowCopy anonInitElementType: aTypeName.
	
	