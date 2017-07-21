prim_pack_progress: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PACK_PROGRESS
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])