postCopy
	"Copy is always internal, e.g, when making copy of structure with external address,
	 a copy will hold same data in its bytearray (in object memory)
	"
	self isExternal 
		ifFalse: [ data := data copy ]
		ifTrue: [ 
			| newData |
			newData := ByteArray new: self class instanceSize.
			NativeBoost memCopy: data to: newData size: self class instanceSize.
			data := newData
	 ]