initialize

	renderer := nil asReactiveVariable.
	super initialize.
	
	lastKeystrokeTime := 0.
	lastKeystrokes := ''.
	
	drawColor := Color white asReactiveVariable.
	model := nil asReactiveVariable.
	isInitialized := false asReactiveVariable.
	isMultipleSelection := false asReactiveVariable.
	listCache := OrderedCollection new asReactiveVariable.
	selectedIndex := 0 asReactiveVariable.
	selectedIndexes := Dictionary new asReactiveVariable.
	listSize := nil asReactiveVariable.
	headerHeight := 0 asReactiveVariable.
	headerTitle := '' asReactiveVariable.
	clickOnHeader := nil asReactiveVariable.
	secondSelection := nil asReactiveVariable.
	displayListCache := OrderedCollection new asReactiveVariable.
	runningProcesses := Array new asReactiveVariable.
	deSelectOnReclick := false asReactiveVariable.
	selectionWithKeys := true asReactiveVariable.
	selectedItem := nil asReactiveVariable.
	selectedItems := OrderedCollection new asReactiveVariable.
	unselectOnChange := false asReactiveVariable.
	iconCache := Dictionary new asReactiveVariable.
	iconMaxSize := nil asReactiveVariable.
	enabled := true asReactiveVariable.
	allowToSelect := true asReactiveVariable.