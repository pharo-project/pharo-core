truncate: pos
	"Truncate to this position"

	self position: pos.
	^self primTruncate: fileHandle to: pos