as yet unclassified
readStreamForFileNamed: aString do: aBlock
	| val |
	directory / aString readStreamDo: [ :stream|
		val := aBlock value: stream ].
	^ val