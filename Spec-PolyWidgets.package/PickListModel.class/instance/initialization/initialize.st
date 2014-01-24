initialize

	wrapHolder := [ :i | i printString ] asReactiveVariable. 
	pickedItemsHolder := OrderedCollection new asReactiveVariable.
	associationsWrapperToItem := Dictionary new asReactiveVariable.
	associationsItemToWrapper := Dictionary new asReactiveVariable.
	associationsIndexToWrapper := Dictionary new asReactiveVariable.
	labelClickableHolder := true asReactiveVariable.
	defaultValueHolder := false asReactiveVariable.
	blockToPerformOnWrappers := [:wrapper | ] asReactiveVariable.
	
	super initialize.