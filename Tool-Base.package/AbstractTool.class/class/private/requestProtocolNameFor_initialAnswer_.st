requestProtocolNameFor: aClass initialAnswer: aString
	| ui |
	ui := ListDialogWindow new
		getList: [ :r | (self class protocolSuggestionsFor: aClass) select: [ :e | r search: e name ] ];
		displayBlock: [ :e | e ];
		initialAnswer: aString;
		acceptNewEntry: true;
		title: 'New Protocol' translated;
		yourself.
	^ ui chooseFromOwner: World