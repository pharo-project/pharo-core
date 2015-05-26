compressGZip
	"just hacking around to see if further compression would help Nebraska"
	| ba hackwa hackba blt rowsAtATime sourceOrigin rowsRemaining bufferStream gZipStream |
	bufferStream := RWBinaryOrTextStream on: (ByteArray new: 5000).
	gZipStream := GZipWriteStream on: bufferStream.
	ba := nil.
	rowsAtATime := 20000.	"or 80000 bytes"
	hackwa := Form new hackBits: self.
	sourceOrigin := 0 @ 0.
	[ (rowsRemaining := hackwa height - sourceOrigin y) > 0 ] whileTrue: 
		[ rowsAtATime := rowsAtATime min: rowsRemaining.
		(ba isNil or: [ ba size ~= (rowsAtATime * 4) ]) ifTrue: 
			[ ba := ByteArray new: rowsAtATime * 4.
			hackba := Form new hackBits: ba.
			blt := (BitBlt toForm: hackba) sourceForm: hackwa ].
		blt
			combinationRule: Form over;
			sourceOrigin: sourceOrigin;
			destX: 0
				destY: 0
				width: 4
				height: rowsAtATime;
			copyBits.
		"bufferStream nextPutAll: ba."
		sourceOrigin := sourceOrigin x @ (sourceOrigin y + rowsAtATime) ].
	gZipStream close.
	^ bufferStream contents