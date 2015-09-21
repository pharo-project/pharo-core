compressFile
	"Write a new file that has the data in me compressed in GZip format."

	| zipStream rawWriteStream |
	self
		readOnly;
		binary.
	rawWriteStream := (self name asFileReference, 'gz') writeStream
		binary;
		setFileTypeToObject.
	zipStream := GZipWriteStream on: rawWriteStream.
	[ 
	| buffer |
	buffer := ByteArray new: 50000.
	[ self atEnd ] whileFalse: [ zipStream nextPutAll: (self nextInto: buffer) ] ]
		ensure: [ 
			zipStream close.
			self close ].
	^ zipStream