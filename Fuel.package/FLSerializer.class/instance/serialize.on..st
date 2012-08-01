serializing
serialize: anObject on: aStream
	"Serialize the graph starting at the root object received and answers the FLSerialization object"

	FLEncoder
		on: aStream 
		do: [ :anEncoder | 
			self encodeSignatureWith: anEncoder.
			self encodeVersionWith: anEncoder.
			"For the moment, we serialize the header as light. Not sure how well it will work because the header can have closures... but Fuel core cannot serialize methods fully...so... "
			FLSerializer newDefault serializationFactory value: header value: anEncoder.
			^ self serializationFactory value: anObject value: anEncoder ]