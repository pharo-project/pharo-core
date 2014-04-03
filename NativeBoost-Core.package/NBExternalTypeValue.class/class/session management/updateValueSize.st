updateValueSize
	"Update the size, in case of session change where type is an external structure which
	uses different memory alignment on given platform
	" 

	valueSize  := (NBFFICallout new requestor: self; resolveType: valueType) typeSize.
