primMoveCursorVisuallyStrong: aBooleanInt
	from: anCursorIndex 
	trailing: aTrailingInt 
	towards: directionInt 
	storeNextIn: aByteArray
	storeNextTrailingIn: nextTrailingByteArray 
	
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self pangoNbCall: #(void pango_layout_move_cursor_visually   (self,
                                                         int aBooleanInt,
                                                         int anCursorIndex,
                                                         int aTrailingInt,
                                                         int directionInt,
                                                         int * aByteArray,
                                                         int * nextTrailingByteArray))