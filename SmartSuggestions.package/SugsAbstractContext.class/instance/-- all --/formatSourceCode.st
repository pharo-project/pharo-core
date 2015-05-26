formatSourceCode
	| formatted |

	formatted := selectedNode formattedCode.
	formatted = self code ifTrue: [ ^ self ].
	self sourceTextArea
		editString: formatted;
		hasUnacceptedEdits: true