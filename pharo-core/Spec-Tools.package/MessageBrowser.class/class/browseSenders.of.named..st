instance creation
browseSenders: aCollection of: aSymbol named: aName

	^ self new
		setRefreshingBlockForSendersOf: aSymbol;
		messages: aCollection;
		title: aName;
		autoSelect: aSymbol;
		yourself