nextCursorPositionFrom: anIndex
	forward: forward
	advance: advance
	|biggie  towards intArray trailingIntArray trailing charOffset index  |
	"if 0, the cursor was at the trailing edge of the grapheme indicated by old_index, if > 0, the cursor was at the leading edge."
	forward 
		ifTrue:[ trailing :=   0 ]
		ifFalse:[ trailing :=   1 ].
	"A negative value indicates motion to the left."
	advance
		ifTrue:[ towards :=   0 ]
		ifFalse:[ towards :=   -1 ].
	intArray := ByteArray new: 4.
	trailingIntArray := ByteArray new: 4.
	self 
		primMoveCursorVisuallyStrong: 1
		from: anIndex 
		trailing: trailing 
		towards: towards 
		storeNextIn: intArray
		storeNextTrailingIn: trailingIntArray. 
	biggie := Smalltalk isBigEndian.	
	index := intArray longAt: 1 bigEndian: biggie.
	charOffset := trailingIntArray longAt: 1 bigEndian: biggie.
	":
number of characters to move forward from the location returned for new_index to get the position where the cursor should be displayed. This allows distinguishing the position at the beginning of one line from the position at the end of the preceding line. new_index is always on the line where the cursor should be displayed."
	
	^ {index . charOffset}