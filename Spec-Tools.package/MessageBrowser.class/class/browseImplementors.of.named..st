instance creation
browseImplementors: aCollection of: aSymbol named: aName

	^ self new
		setRefreshingBlockForImplementorsOf: aSymbol;
		messages: aCollection;
		title: aName;
		yourself