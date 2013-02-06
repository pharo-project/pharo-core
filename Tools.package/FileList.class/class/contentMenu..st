menu
contentMenu: aBuilder
	<contextMenu>
	<fileListContentMenu>
	
	(aBuilder item: #'Find...' translated)
		keyText: 'f';
		selector: #find;
		icon: UITheme current smallFindIcon.
	(aBuilder item: #'Find again' translated)
		keyText: 'g';
		selector: #findAgain;
		icon: UITheme current smallFindIcon.
	(aBuilder item: #'Set search string' translated)
		keyText: 'h';
		selector: #setSearchString;
		withSeparatorAfter.
		
	(aBuilder item: #'Do again' translated)
		keyText: 'j';
		selector: #again;
		icon: UITheme current smallRedoIcon.
	(aBuilder item: #'Undo' translated)
		keyText: 'z';
		selector: #undo;
		icon: UITheme current smallUndoIcon;
		withSeparatorAfter.
		
	(aBuilder item: #'Copy' translated)
		keyText: 'c';
		selector: #copySelection;
		icon: UITheme current smallCopyIcon.
	(aBuilder item: #'Cut' translated)
		keyText: 'x';
		selector: #cut;
		icon: UITheme current smallCutIcon.
	(aBuilder item: #'Paste' translated)
		keyText: 'v';
		selector: #paste;
		icon: UITheme current smallPasteIcon.
	(aBuilder item: #'Paste...' translated)
		selector: #pasteRecent;
		icon: UITheme current smallPasteIcon;
		withSeparatorAfter .
		
	(aBuilder item: #'Do it' translated)
		keyText: 'd';
		selector: #doIt;
		icon: UITheme current smallDoItIcon.
	(aBuilder item: #'Print it' translated)
		keyText: 'p';
		selector: #printIt;
		icon: UITheme current smallPrintItIcon.
	(aBuilder item: #'Inspect it' translated)
		keyText: 'i';
		selector: #inspectIt;
		icon: UITheme current smallInspectItIcon.
	(aBuilder item: #'FileIn selection' translated)
		keyText: 'G';
		selector: #fileItIn;
		withSeparatorAfter.
		
	(aBuilder item: #'Accept' translated)
		keyText: 's';
		selector: #accept;
		icon: UITheme current smallOkIcon.
	(aBuilder item: #'Cancel' translated)
		keyText: 'l';
		selector: #cancel;
		icon: UITheme current smallCancelIcon;
		withSeparatorAfter.
		
	(aBuilder item: #'More...' translated)
		selector: #shiftedYellowButtonActivity.
