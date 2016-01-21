sizeOf: aTypeName
	^ (FFICallout new resolveType: aTypeName) typeSize