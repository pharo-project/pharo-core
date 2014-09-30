updateTextAreaWhenPlugged
	| t |
	t := self textArea text copy.
	self textArea updateTextWith: ''.
	self textArea updateTextWith: t.
