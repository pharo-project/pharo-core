ofType: aTypeName
	^ FFIExternalValueHolder newAnonymousSubclass 
		type: (FFIExternalType resolveType: aTypeName)