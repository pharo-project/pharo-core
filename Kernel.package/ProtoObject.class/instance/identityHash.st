comparing
identityHash
	"Answer a SmallInteger whose value is related to the receiver's identity.
	This method must not be overridden, except by SmallInteger.
	
	Do not override."

	^ self basicIdentityHash bitShift: 18