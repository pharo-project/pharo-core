class factory
getClassForType: aTypeName
	"Do not confuse.! This method answers an anonymous class,  a subclass of NBExternalTypeValue,
	which can be used for instantiation later i.e:
	
	floatTypeClass := NBExternalTypeValue ofType: 'float'.
	
	float  := floatTypeClass new.
	float value: 1.5.
	float value.
	
	"
	| cls |
	cls := self shallowCopy.
	cls 
		methodDict: MethodDictionary new;
		setName: nil;
		organization: nil;
		superclass: self;
		classPool: nil;
		sharedPools: nil;
		basicInstVarNames: nil;
		valueType: aTypeName.
	
	^ cls