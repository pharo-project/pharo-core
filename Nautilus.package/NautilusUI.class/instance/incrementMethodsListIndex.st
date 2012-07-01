shortcuts from text morph
incrementMethodsListIndex

	| index |
	methodWidget resetMethodsListSelection.
	index := (methodWidget selectedMethodIndex + 1).
	index > methodWidget getMethods size ifTrue: [ index := 1 ].
	methodWidget selectedMethodIndex: index.
	sourceTextArea takeKeyboardFocus 