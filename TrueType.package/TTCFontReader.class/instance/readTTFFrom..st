as yet unclassified
readTTFFrom: aStream

	"Read the raw font byte data"
	| fontData |
	(aStream respondsTo: #binary) ifTrue:[aStream binary].
	fontData := aStream contents asByteArray.
	fontDescription := TTCFontDescription new.

	^ self readFrom: fontData fromOffset: 0 at: EncodingTag.
