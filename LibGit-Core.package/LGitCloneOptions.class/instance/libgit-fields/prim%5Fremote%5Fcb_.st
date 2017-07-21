prim_remote_cb: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_REMOTE_CB
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])