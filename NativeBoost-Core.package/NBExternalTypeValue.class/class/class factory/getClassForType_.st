getClassForType: aTypeName
	"Do not confuse.! This method answers an anonymous class,  a subclass of NBExternalTypeValue,
	which can be used for instantiation later i.e:
	
	floatTypeClass := NBExternalTypeValue ofType: 'float'.
	
	float  := floatTypeClass new.
	float value: 1.5.
	float value.
	
	"
	^ NBExternalTypeValue newAnonymousSubclass initValueType: aTypeName.

