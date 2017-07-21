prim_buffer_signature: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_BUFFER_SIGNATURE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])