valueType: aTypeName
	valueType := aTypeName.
	valueSize  := (NBFFICallout new requestor: self; resolveType: valueType) typeSize.
	self installAccessors.
	