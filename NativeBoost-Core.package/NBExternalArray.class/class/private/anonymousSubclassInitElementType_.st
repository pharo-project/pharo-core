anonymousSubclassInitElementType: aTypeName
	"create and initialize the anonymous subclass of me"

	| newSubclass |
	newSubclass := AnonymousClassInstaller make: [ :builder |
		"we're not using 'self' to avoid wrong subclassing from anonymous subclass"
		builder superclass: NBExternalArray ].
	newSubclass initElementType: aTypeName.
	^ newSubclass