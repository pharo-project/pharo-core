okAction

	text accept.
	block value: (Smalltalk evaluate: (String streamContents: [:s | s << '[' << text getText <<']'])).