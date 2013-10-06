requestProtocolNameFor: aClass initialAnswer: aString
	| ui |

	ui := ListDialogWindow new
			getList: [ :r| (AbstractTool protocolSuggestionsFor: aClass) select: [:e | r search: e name ] ];
			displayBlock: [:e | e ];
			acceptNewEntry: true;
			initialAnswer: aString;
			title: 'New Protocol';
			yourself.
			
	^ ui chooseFromOwner: World.
