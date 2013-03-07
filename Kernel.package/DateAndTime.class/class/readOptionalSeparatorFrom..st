input
readOptionalSeparatorFrom: stream
	"Read an optional separator (non decimal digit) from stream and return it.
	Return nil if nothing was read"

	^ (stream atEnd or: [ '0123456789' includes: stream peek])
		ifTrue: [ nil ]
		ifFalse: [ stream next ]