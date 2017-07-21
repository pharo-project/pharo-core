prim_header
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFICharacterType size: 128) fromHandle: (handle copyFrom: OFFSET_PRIM_HEADER to: OFFSET_PRIM_HEADER + 127)