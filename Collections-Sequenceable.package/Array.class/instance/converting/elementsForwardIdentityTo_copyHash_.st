elementsForwardIdentityTo: otherArray copyHash: copyHash
	"This primitive performs a bulk mutation, causing all pointers to the elements of this array to be replaced by pointers to the corresponding elements of otherArray.  
	If copyHash is true, 
		the identityHashes remain with the pointers rather than with the objects so that the objects in this array should still be properly indexed in any existing hashed structures after the mutation.
		That means that the identityHashes of the elements in otherArray are modified to be the ones of the corresponding elements in this array.
	If copyHash is false,
		then identityHashes stay with the objects and thus the elements in otherArray are not modified.
		In this case only the pointers to the elements in this array are forwarded."
	<primitive: 249>
	self primitiveFailed