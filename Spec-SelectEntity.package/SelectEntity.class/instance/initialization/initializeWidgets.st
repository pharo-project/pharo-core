initializeWidgets
	entityText := self newTextInput
		ghostText: self ghostText;
		autoAccept: true;
		entryCompletion: self entitiesEntryCompletion;
		yourself.
	selectEntity := self newButton
		icon: (Smalltalk ui icons iconNamed: #glamorousSearch);
		help: 'Open a selection dialog'.
	self focusOrder
		add: entityText;
		add: selectEntity