requestProtocolNameFor: aClass initialAnswer: aString
	| ui |
	ui := ListDialogWindow new
		getList: [ :r | (AbstractTool protocolSuggestionsFor: aClass) select: [ :e | r search: e name ] ];
		displayBlock: [ :e | e ];
		initialAnswer: aString;
		acceptNewEntry: true;
		title: 'New Protocol';
		yourself.
	^ ui chooseFromOwner: World