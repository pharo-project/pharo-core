as yet unclassified
readFrom: aStream

	"Read the raw font byte data"
	| fontData |
	(aStream respondsTo: #binary) ifTrue:[aStream binary].
	fontData := aStream contents asByteArray.

	fonts := self parseTTCHeaderFrom: fontData.
	^ ((Array with: fonts first) collect: [:offset |
		fontDescription := TTCFontDescription new.
		self readFrom: fontData fromOffset: offset at: EncodingTag.
	]) at: 1.
