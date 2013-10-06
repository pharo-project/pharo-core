encodeForHTTPWithTextEncoding: encodingName conditionBlock: conditionBlock
	"change dangerous characters to their %XX form, for use in HTTP transactions"

	| httpSafeStream encodedStream cont |
	httpSafeStream := (String new) writeStream.
	encodedStream := MultiByteBinaryOrTextStream on: (String new: 6).
	encodedStream converter: (TextConverter newForEncoding: encodingName).
	self do: [:c |
		(conditionBlock value: c)
			ifTrue: [httpSafeStream nextPut: (Character value: c charCode)]
			ifFalse: [
				encodedStream text; resetToStart.
				encodedStream nextPut: c.
				encodedStream position: 0.
				encodedStream binary.
				cont := encodedStream contents.
				cont do: [:byte |
					httpSafeStream nextPut: $%.
					httpSafeStream nextPut: (byte // 16) asHexDigit.
					httpSafeStream nextPut: (byte \\ 16) asHexDigit.
				].
			].
	].
	^ httpSafeStream contents.
