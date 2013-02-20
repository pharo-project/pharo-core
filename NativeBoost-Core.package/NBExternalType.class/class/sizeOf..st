public
sizeOf: aTypeName

	^ (NBFFICallout new resolveType: aTypeName) valueSize