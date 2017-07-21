prim_update_tips: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_UPDATE_TIPS
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])