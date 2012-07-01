initialization
initializeWidgets

	self instantiateModels: #(
		methodBrowser MethodBrowser
		textField TextInputFieldModel ).
	
	textField 
		ghostText: 'Enter a class name';
		autoAccept: true;
		removeEntryCompletion.
	methodBrowser 
		sortingBlock: [:a :b | a selector < b selector ];
		displayBlock: [:m | m selector ]