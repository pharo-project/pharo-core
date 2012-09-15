source code area
lockTextArea

	self selectedMethod isNil ifTrue: [ ^ self ].
	
	sourceTextArea lockFrom: self selectedMethod.
	self buildNewSourceTextArea.
	multipleMethodsEditor addEditor: sourceTextArea.
	self changed: #sourceCodeFrom:.