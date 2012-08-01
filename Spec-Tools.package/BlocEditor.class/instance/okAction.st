initialization
okAction

	text accept.
	block contents: (Compiler evaluate: (String streamContents: [:s | s << '[' << text getText <<']'])).