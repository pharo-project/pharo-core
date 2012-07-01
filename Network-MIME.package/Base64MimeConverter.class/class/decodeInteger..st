as yet unclassified
decodeInteger: mimeString 
	"Decode the MIME string into an integer of any length"
	| bytes sum |
	bytes := (Base64MimeConverter mimeDecodeToBytes: mimeString readStream) contents.
	sum := 0.
	bytes reverseDo: [ :by | sum := sum * 256 + by ].
	^ sum