onPositionDo: aBlock

	| originalPosition |
	"It will position the file in the position of the stream. Then it will execute the block and restore the position in the file"
	[ originalPosition := file position.
	file position: position.
	aBlock value ] ensure: [
		position := file position.
		file position: originalPosition ]