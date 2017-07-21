prim_similarity: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_SIMILARITY
		put: (anObject 
			ifNotNil: [ ExternalAddress fromAddress: anObject thunk address ]
			ifNil: [ ExternalAddress null ])