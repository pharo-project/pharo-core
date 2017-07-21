prim_push_update_reference: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PUSH_UPDATE_REFERENCE
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])