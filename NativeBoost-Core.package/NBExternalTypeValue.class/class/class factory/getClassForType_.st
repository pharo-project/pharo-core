getClassForType: aTypeName
	"Do not confuse.! This method answers an anonymous class,  a subclass of NBExternalTypeValue,
	which can be used for instantiation later i.e:
	
	floatTypeClass := NBTypeValue ofType: 'float'.
	
	float  := floatTypeClass new.
	float value: 1.5.
	float value.
	
	"

	| newSubclass |
	newSubclass := AnonymousClassInstaller make: [ :builder |
		"we're not using 'self' to avoid wrong subclassing from anonymous subclass "
		builder superclass: NBExternalTypeValue ].
	newSubclass initValueType: aTypeName.
	^ newSubclass