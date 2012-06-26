initialize-release
initialize
	super initialize.
	codeStream := WriteStream on: (String new: 60).
	tabs := 0.
	lineStart := 0