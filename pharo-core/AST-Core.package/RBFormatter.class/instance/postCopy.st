copying
postCopy
	super postCopy.
	lineStart := self lineLength negated.
	codeStream := WriteStream on: (String new: 60).
	firstLineLength := nil