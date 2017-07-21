prim_completion: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_COMPLETION
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])