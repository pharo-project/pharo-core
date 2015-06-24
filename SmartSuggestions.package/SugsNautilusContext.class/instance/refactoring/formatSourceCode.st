formatSourceCode
	| formatted |
	formatted := selectedNode formattedCode.
	formatted = self code
		ifTrue: [ ^ self ].
	self sourceTextArea sourceTextModel
		formatSourceCodeInView;
		hasUnacceptedEdits: true