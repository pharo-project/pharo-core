updateElementSize
	"Update the element size, in case of session change where type is an external structure which
	uses different memory alignment on given platform
	" 
	elementSize := (NBFFICallout new requestor: self; resolveType: elementType) typeSize .
