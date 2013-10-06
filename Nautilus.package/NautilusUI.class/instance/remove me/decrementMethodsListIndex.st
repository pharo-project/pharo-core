decrementMethodsListIndex

	| index |
	methodWidget resetMethodsListSelection.
	index :=(methodWidget selectedMethodIndex - 1).
	index < 1 ifTrue: [ index := methodWidget methodListSize ]. 
	methodWidget selectedMethodIndex: index.
	sourceTextArea takeKeyboardFocus