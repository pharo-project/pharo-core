formatSourceCode
	| textArea |
	
	self model ifNil: [ ^ self ].
	
	textArea := self model sourceTextArea.
	
	textArea handleEdit: [ 
			| source tree formatted |
			source := textArea textMorph text asString.
			tree := RBParser parseMethod: source onError: [ :msg :pos | ^ self ].
			formatted := tree formattedCode.
			formatted = source ifTrue: [ ^ self ].
			textArea
				editString: formatted;
				hasUnacceptedEdits: true ]