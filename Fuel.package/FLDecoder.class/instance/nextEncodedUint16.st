decoding
nextEncodedUint16
	"Answer the next unsigned, 16-bit integer from this (binary) stream."
	| n |
	n := stream next.
	n := (n bitShift: 8) + (stream next).
	^ n
