formatSourceCode
	| textArea |
	
	self model ifNil: [ ^ self ].
	
	textArea := self model sourceTextArea.
	textArea formatSourceCode.