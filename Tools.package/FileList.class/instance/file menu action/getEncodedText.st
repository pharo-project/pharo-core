getEncodedText

	Cursor read showWhile: [
		self selectEncoding.
		self changed: #contents].
