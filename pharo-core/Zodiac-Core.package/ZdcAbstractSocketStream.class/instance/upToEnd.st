stream in
upToEnd
	"Read bytes until the stream is atEnd and return them as a ByteArray.
	This is an inefficient abstract implementation reading bytes one by one."

	^ self collectionSpecies 
		streamContents: [ :writeStream |
			[ self atEnd ] whileFalse: [ 
				writeStream nextPut: self next ] ]