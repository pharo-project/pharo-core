varBytesFirstField
	" answer an offset of first byte of variable-bytes oop, relative to object pointer"
	"In object formats where additional header fields are stored before the base header, this is just the size of the header"
	^ self baseHeaderSize
