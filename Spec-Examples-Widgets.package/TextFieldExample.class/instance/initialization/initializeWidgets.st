initializeWidgets

	methodBrowser := self instantiate: MethodBrowser.
	textField := self newTextInput.
	
	textField 
		ghostText: 'Enter a class name';
		autoAccept: true;
		removeEntryCompletion.
	methodBrowser 
		sortingBlock: [:a :b | a selector < b selector ];
		displayBlock: [:m | m selector ]