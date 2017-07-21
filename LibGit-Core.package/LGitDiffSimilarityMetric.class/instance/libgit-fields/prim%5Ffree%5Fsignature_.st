prim_free_signature: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_FREE_SIGNATURE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])