serializing
serialize: anObject on: aStream
	"Serialize the graph starting at the root object received and answers the FLSerialization object"

	FLEncoder
		on: aStream 
		do: [ :anEncoder | 
			self encodeSignatureWith: anEncoder.
			self encodeVersionWith: anEncoder.
			^ self serializationFactory 
				value: anObject 
				value: anEncoder ]