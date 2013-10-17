contentMenu: aBuilder
	<contextMenu>
	<fileListContentMenu>
	
	(aBuilder item: #'Find...' translated)
		keyText: 'f';
		selector: #find;
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Find again' translated)
		keyText: 'g';
		selector: #findAgain;
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Set search string' translated)
		keyText: 'h';
		selector: #setSearchString;
		withSeparatorAfter.
		
	(aBuilder item: #'Do again' translated)
		keyText: 'j';
		selector: #again;
		icon: Smalltalk ui icons smallRedoIcon.
	(aBuilder item: #'Undo' translated)
		keyText: 'z';
		selector: #undo;
		icon: Smalltalk ui icons smallUndoIcon;
		withSeparatorAfter.
		
	(aBuilder item: #'Copy' translated)
		keyText: 'c';
		selector: #copySelection;
		icon: Smalltalk ui icons smallCopyIcon.
	(aBuilder item: #'Cut' translated)
		keyText: 'x';
		selector: #cut;
		icon: Smalltalk ui icons smallCutIcon.
	(aBuilder item: #'Paste' translated)
		keyText: 'v';
		selector: #paste;
		icon: Smalltalk ui icons smallPasteIcon.
	(aBuilder item: #'Paste...' translated)
		selector: #pasteRecent;
		icon: Smalltalk ui icons smallPasteIcon;
		withSeparatorAfter .
		
	(aBuilder item: #'Do it' translated)
		keyText: 'd';
		selector: #doIt;
		icon: Smalltalk ui icons smallDoItIcon.
	(aBuilder item: #'Print it' translated)
		keyText: 'p';
		selector: #printIt;
		icon: Smalltalk ui icons smallPrintItIcon.
	(aBuilder item: #'Inspect it' translated)
		keyText: 'i';
		selector: #inspectIt;
		icon: Smalltalk ui icons smallInspectItIcon.
	(aBuilder item: #'FileIn selection' translated)
		keyText: 'G';
		selector: #fileItIn;
		withSeparatorAfter.
		
	(aBuilder item: #'Accept' translated)
		keyText: 's';
		selector: #accept;
		icon: Smalltalk ui icons smallOkIcon.
	(aBuilder item: #'Cancel' translated)
		keyText: 'l';
		selector: #cancel;
		icon: Smalltalk ui icons smallCancelIcon;
		withSeparatorAfter.
		
	(aBuilder item: #'More...' translated)
		selector: #shiftedYellowButtonActivity.
