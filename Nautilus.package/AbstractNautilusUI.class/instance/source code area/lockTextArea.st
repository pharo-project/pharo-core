lockTextArea

	self selectedMethod ifNil: [ ^ self ].
	self buildNewSourceTextArea.
	multipleMethodsEditor addEditor: sourceTextArea.
	self changed: #sourceCodeFrom:.