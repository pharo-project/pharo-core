compressFile
	"Write a new file that has the data in me compressed in GZip format."
	| zipped buffer |

	self readOnly; binary.
	zipped := (self directory / self name, 'gz') writeStream.
	zipped binary.
		"Type and Creator not to be text, so can be enclosed in an email"
	zipped := GZipWriteStream on: zipped.
	buffer := ByteArray new: 50000.
	'Compressing ', self fullName displayProgressFrom: 0 to: self size
		during: [:bar |
			[self atEnd] whileFalse: [
				bar current: self position.
				zipped nextPutAll: (self nextInto: buffer)].
			zipped close.
			self close].
	^zipped